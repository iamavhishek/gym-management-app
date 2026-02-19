import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/core/models/member_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:gym_management_app/ui/widgets/charts/activity_chart.dart';
import 'package:gym_management_app/ui/widgets/dashboard_scaffold.dart';
import 'package:gym_management_app/ui/widgets/gym_stat_card.dart';

class MemberDashboard extends StatefulWidget {
  const MemberDashboard({super.key});

  @override
  State<MemberDashboard> createState() => _MemberDashboardState();
}

class _MemberDashboardState extends State<MemberDashboard> {
  @override
  void initState() {
    super.initState();
    final state = context.read<MemberBloc>().state;
    if (state is! MemberProfileLoaded) {
      context.read<MemberBloc>().add(const MemberEvent.profileStarted());
    }
  }

  @override
  Widget build(BuildContext context) {
    return DashboardScaffold(
      title: 'Fitness Hub',
      onRefresh: () async {
        context.read<MemberBloc>().add(const MemberEvent.profileStarted());
      },
      body: BlocBuilder<MemberBloc, MemberState>(
        builder: (context, state) {
          if (state is MemberLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MemberProfileLoaded) {
            return _buildBody(state.profile);
          } else if (state is MemberError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildBody(MemberModel profile) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWelcomeHeader(profile),
          const SizedBox(height: 20),
          _buildActivePlanCard(profile),
          const SizedBox(height: 24),
          _buildStatsRow(profile),
          const SizedBox(height: 24),
          _buildActivitySection(),
          const SizedBox(height: 24),
          _buildQuickActions(),
        ],
      ),
    );
  }

  Widget _buildWelcomeHeader(MemberModel profile) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, ${profile.user?.firstName ?? 'Athlete'}!',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: const Color(0xFF0F172A),
              ),
            ),
            Text(
              'Ready for your workout today?',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => context.push(AppRoutes.memberProfile),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppTheme.primaryBlue.withOpacity(0.2)),
            ),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppTheme.primaryBlue.withOpacity(0.1),
              child: Text(
                profile.user?.firstName[0] ?? 'M',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primaryBlue,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActivePlanCard(MemberModel profile) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: AppTheme.primaryGradiant,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: AppTheme.primaryBlue.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Active Subscription',
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'ACTIVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            profile.planName ?? 'Premium Membership',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Icon(Icons.timer_outlined, color: Colors.white70, size: 16),
              const SizedBox(width: 8),
              Text(
                'Expires in ${_getDaysRemaining(profile.expiryDate)} days',
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: AppTheme.primaryBlue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  minimumSize: Size.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Renew',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  int _getDaysRemaining(String? expiryDate) {
    if (expiryDate == null) return 0;
    final date = DateTime.tryParse(expiryDate);
    if (date == null) return 0;
    return date.difference(DateTime.now()).inDays;
  }

  Widget _buildStatsRow(MemberModel profile) {
    return Row(
      children: [
        Expanded(
          child: GymStatCard(
            label: 'Attendance',
            value: '${profile.attendanceRate ?? 85}%',
            icon: Icons.calendar_month_rounded,
            color: Colors.orange,
            gradient: AppTheme.warningGradiant,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: GymStatCard(
            label: 'Goal',
            value: profile.goals ?? 'Fat Loss',
            icon: Icons.track_changes_rounded,
            color: Colors.purple,
            gradient: AppTheme.accentGradiant,
          ),
        ),
      ],
    );
  }

  Widget _buildActivitySection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Weekly Activity',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E293B),
                ),
              ),
              Text(
                'Last 7 days',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const ActivityChart(),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _quickAction(
          Icons.qr_code_scanner_rounded,
          'Check In',
          () => context.push(AppRoutes.qrScanner),
        ),
        _quickAction(
          Icons.fitness_center_rounded,
          'Workout',
          () => context.push(AppRoutes.memberWorkouts),
        ),
        _quickAction(
          Icons.history_rounded,
          'History',
          () => context.push(AppRoutes.memberAttendance),
        ),
        _quickAction(
          Icons.notifications_none_rounded,
          'Alerts',
          () => context.push(AppRoutes.notifications),
        ),
      ],
    );
  }

  Widget _quickAction(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade100),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.02),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(icon, color: const Color(0xFF1E293B), size: 24),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
