import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/core/models/member_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';

class AssignedMembersScreen extends StatefulWidget {
  const AssignedMembersScreen({super.key});

  @override
  State<AssignedMembersScreen> createState() => _AssignedMembersScreenState();
}

class _AssignedMembersScreenState extends State<AssignedMembersScreen> {
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    context.read<MemberBloc>().add(const MemberEvent.fetchClients());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Clients',
          style: GoogleFonts.outfit(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by name...',
                prefixIcon: const Icon(Icons.search, size: 20),
                filled: true,
                fillColor: AppTheme.surfaceLight,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(),
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
            return _buildClientsList(state.members);
          } else if (state is MemberError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildClientsList(List<MemberModel> members) {
    final filtered = members.where((m) {
      if (_searchQuery.isEmpty) return true;
      final name = '${m.user?.firstName ?? ''} ${m.user?.lastName ?? ''}'
          .toLowerCase();
      return name.contains(_searchQuery.toLowerCase());
    }).toList();

    if (filtered.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people_outline_rounded,
              size: 80,
              color: AppTheme.textSecondary.withOpacity(0.2),
            ),
            const SizedBox(height: 16),
            Text(
              'No clients match your search',
              style: GoogleFonts.inter(
                color: AppTheme.textSecondary,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<MemberBloc>().add(const MemberEvent.fetchClients());
      },
      child: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: filtered.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final member = filtered[index];
          return _buildClientCard(member);
        },
      ),
    );
  }

  Widget _buildClientCard(MemberModel member) {
    final statusColor = (member.status?.toLowerCase() == 'active')
        ? const Color(0xFF10B981)
        : const Color(0xFFEF4444);

    return Container(
      decoration: AppTheme.premiumDecoration(),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withOpacity(0.1),
            shape: BoxShape.circle,
            border: Border.all(color: AppTheme.primaryBlue.withOpacity(0.1)),
          ),
          child: Center(
            child: Text(
              '${member.user?.firstName[0] ?? 'C'}${member.user?.lastName[0] ?? ''}',
              style: GoogleFonts.outfit(
                color: AppTheme.primaryBlue,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        title: Text(
          '${member.user?.firstName ?? 'Unknown'} ${member.user?.lastName ?? ''}',
          style: GoogleFonts.outfit(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppTheme.textMain,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(
                  Icons.track_changes_rounded,
                  size: 14,
                  color: AppTheme.textSecondary,
                ),
                const SizedBox(width: 4),
                Text(
                  member.goals ?? 'Fitness Goal',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                member.status?.toUpperCase() ?? 'ACTIVE',
                style: GoogleFonts.inter(
                  color: statusColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.chevron_right_rounded,
          color: AppTheme.textSecondary,
        ),
        onTap: () {
          // Navigate to client detail / workout plan
          context.push(
            '${AppRoutes.trainerWorkouts}/create?memberId=${member.id}',
          );
        },
      ),
    );
  }
}
