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
import 'package:gym_management_app/ui/config/theme.dart';

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
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search members...',
                prefixIcon: Icon(Icons.search, size: 20),
                contentPadding: EdgeInsets.symmetric(),
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
        ? const Color(0xFF10B981)
        : const Color(0xFFEF4444);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: AppTheme.premiumDecoration(),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '${member.user?.firstName[0] ?? 'M'}${member.user?.lastName[0] ?? ''}',
              style: const TextStyle(
                color: AppTheme.primaryBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        title: Text(
          '${member.user?.firstName ?? 'Unknown'} ${member.user?.lastName ?? ''}',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              'ID: ${member.membershipNumber}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    member.status?.toUpperCase() ?? 'UNKNOWN',
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    member.planName ?? 'No Plan',
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: const Icon(
          Icons.chevron_right_rounded,
          color: AppTheme.textSecondary,
        ),
        onTap: () => context.push(
          '${AppRoutes.adminMembers}/${member.id}',
        ),
      ),
    );
  }
}
