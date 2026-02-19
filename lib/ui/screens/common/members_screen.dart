import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_management_app/core/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/core/blocs/auth/auth_state.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/core/models/member_model.dart';

class MembersScreen extends StatefulWidget {
  const MembersScreen({super.key});

  @override
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    final state = context.read<MemberBloc>().state;
    if (state is! MemberMembersLoaded) {
      _loadMembers();
    }
  }

  void _loadMembers() {
    final authState = context.read<AuthBloc>().state;
    if (authState is AuthAuthenticated) {
      if (authState.user.role == 'trainer') {
        context.read<MemberBloc>().add(const MemberEvent.fetchClients());
      } else {
        context.read<MemberBloc>().add(const MemberEvent.fetchMembers());
      }
    } else {
      context.read<MemberBloc>().add(const MemberEvent.fetchMembers());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search members...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) => setState(() => _searchQuery = value),
            ),
          ),
        ),
      ),
      body: BlocBuilder<MemberBloc, MemberState>(
        builder: (context, state) {
          if (state is MemberLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MemberMembersLoaded) {
            return _buildMembersList(state.members);
          } else if (state is MemberError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutes.adminMembersAdd),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildMembersList(List<MemberModel> members) {
    final filtered = members.where((m) {
      if (_searchQuery.isEmpty) return true;
      final name = '${m.user?.firstName ?? ''} ${m.user?.lastName ?? ''}'
          .toLowerCase();
      return name.contains(_searchQuery.toLowerCase());
    }).toList();

    if (filtered.isEmpty) {
      return const Center(child: Text('No members found'));
    }

    return RefreshIndicator(
      onRefresh: () async {
        _loadMembers();
      },
      child: ListView.builder(
        itemCount: filtered.length,
        itemBuilder: (context, index) {
          final member = filtered[index];
          return _buildMemberCard(member);
        },
      ),
    );
  }

  Widget _buildMemberCard(MemberModel member) {
    final statusColor = (member.status?.toLowerCase() == 'active')
        ? Colors.green
        : Colors.red;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            '${member.user?.firstName[0] ?? 'M'}${member.user?.lastName[0] ?? ''}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(
          '${member.user?.firstName ?? 'Unknown'} ${member.user?.lastName ?? ''}',
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${member.membershipNumber}'),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    member.status?.toUpperCase() ?? 'UNKNOWN',
                    style: TextStyle(color: statusColor, fontSize: 12),
                  ),
                ),
                const SizedBox(width: 8),
                Text(member.planName ?? 'No Plan'),
              ],
            ),
          ],
        ),
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            const PopupMenuItem(value: 'view', child: Text('View Details')),
            const PopupMenuItem(value: 'edit', child: Text('Edit')),
          ],
          onSelected: (value) {
            switch (value) {
              case 'view':
                context.push(
                  '${AppRoutes.adminMembers}/${member.id}',
                );
                break;
              case 'edit':
                context.push(
                  '${AppRoutes.adminMembers}/${member.id}/edit',
                );
                break;
            }
          },
        ),
        onTap: () => context.push(
          '${AppRoutes.adminMembers}/${member.id}',
        ),
      ),
    );
  }
}
