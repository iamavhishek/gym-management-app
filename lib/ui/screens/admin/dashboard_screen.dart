import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_management_app/core/blocs/stats/stats_bloc.dart';
import 'package:gym_management_app/core/blocs/stats/stats_event.dart';
import 'package:gym_management_app/core/blocs/stats/stats_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:gym_management_app/ui/widgets/charts/membership_pie_chart.dart';
import 'package:gym_management_app/ui/widgets/charts/revenue_chart.dart';
import 'package:gym_management_app/ui/widgets/dashboard_scaffold.dart';
import 'package:gym_management_app/ui/widgets/gym_stat_card.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  void initState() {
    super.initState();
    final state = context.read<StatsBloc>().state;
    if (state is! StatsDashboardLoaded) {
      context.read<StatsBloc>().add(const StatsEvent.fetchDashboard());
    }
  }

  @override
  Widget build(BuildContext context) {
    return DashboardScaffold(
      title: 'Admin Console',
      onRefresh: () async {
        context.read<StatsBloc>().add(const StatsEvent.fetchDashboard());
      },
      body: BlocBuilder<StatsBloc, StatsState>(
        builder: (context, state) {
          if (state is StatsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is StatsDashboardLoaded) {
            final stats = state.stats;
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  const SizedBox(height: 20),
                  _buildStatsGrid(stats),
                  const SizedBox(height: 24),
                  _buildChartsSection(),
                  const SizedBox(height: 24),
                  if (!((stats['hasPlans'] as bool?) ?? true))
                    _buildNoPlansWarning(),
                  const SizedBox(height: 12),
                  _buildQuickActions(),
                  const SizedBox(height: 24),
                ],
              ),
            );
          } else if (state is StatsError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Overview',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: const Color(0xFF0F172A),
          ),
        ),
        Text(
          'Manage your gym performance at a glance',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }

  Widget _buildStatsGrid(Map<String, dynamic> stats) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.count(
          crossAxisCount: constraints.maxWidth > 600 ? 4 : 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            GymStatCard(
              label: 'Total Members',
              value: '${stats['totalMembers'] ?? 1240}', // Dummy fallback
              icon: Icons.people_rounded,
              color: Colors.blue.shade600,
              gradient: AppTheme.primaryGradiant,
            ),
            GymStatCard(
              label: 'Gym Traffic',
              value: '${stats['todayAttendance'] ?? 42}',
              icon: Icons.flash_on_rounded,
              color: Colors.purple.shade600,
              gradient: AppTheme.accentGradiant,
            ),
            GymStatCard(
              label: "Revenue",
              value: 'रु ${stats['todayRevenue'] ?? "12.5k"}',
              icon: Icons.payments_rounded,
              color: const Color(0xFF10B981),
              gradient: AppTheme.successGradiant,
            ),
            GymStatCard(
              label: 'Pending',
              value: '${stats['pendingDues'] ?? 8}',
              icon: Icons.error_outline_rounded,
              color: Colors.orange.shade600,
              gradient: AppTheme.warningGradiant,
            ),
          ],
        );
      },
    );
  }

  Widget _buildChartsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader('Analytics'),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: _chartCard('Revenue Growth', const RevenueChart()),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _chartCard('Plans', const MembershipPieChart()),
            ),
          ],
        ),
      ],
    );
  }

  Widget _sectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF1E293B),
      ),
    );
  }

  Widget _chartCard(String title, Widget chart) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF64748B),
            ),
          ),
          const SizedBox(height: 16),
          chart,
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader('Quick Actions'),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 3.0,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            _actionButton(
              'Record Payment',
              Icons.add_card_rounded,
              Colors.blue,
              () => context.push(AppRoutes.adminPayments),
            ),
            _actionButton(
              'New Member',
              Icons.person_add_rounded,
              Colors.purple,
              () => context.push(AppRoutes.adminMembersAdd),
            ),
            _actionButton(
              'Attendance Scan',
              Icons.qr_code_scanner_rounded,
              Colors.orange,
              () => context.push(AppRoutes.qrScanner),
            ),
            _actionButton(
              'Membership Plans',
              Icons.assignment_rounded,
              Colors.green,
              () => context.push(AppRoutes.adminPlans),
            ),
          ],
        ),
      ],
    );
  }

  Widget _actionButton(
    String label,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.08),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withOpacity(0.1)),
        ),
        child: Row(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: color.withOpacity(0.8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNoPlansWarning() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.05),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.red.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning_amber_rounded, color: Colors.red),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Initialization Required',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'No membership plans found. Please set them up.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => context.push(AppRoutes.adminPlans),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            child: const Text('Setup', style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
