import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_core/blocs/stats/stats_bloc.dart';
import 'package:gym_core/blocs/stats/stats_event.dart';
import 'package:gym_core/blocs/stats/stats_state.dart';
import 'package:gym_core/config/routes.dart';
import 'package:gym_ui/widgets/dashboard_scaffold.dart';
import 'package:gym_ui/widgets/gym_stat_card.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<StatsBloc>().add(const StatsEvent.fetchDashboard());
  }

  @override
  Widget build(BuildContext context) {
    return DashboardScaffold(
      title: 'Admin Dashboard',
      onRefresh: () async {
        context.read<StatsBloc>().add(const StatsEvent.fetchDashboard());
      },
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
          switch (index) {
            case 1:
              context.push(AppRoutes.adminMembers);
              break;
            case 2:
              context.push(AppRoutes.adminTrainers);
              break;
            case 3:
              context.push(AppRoutes.adminPayments);
              break;
            case 4:
              context.push(AppRoutes.adminReports);
              break;
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(icon: Icon(Icons.people), label: 'Members'),
          NavigationDestination(
            icon: Icon(Icons.fitness_center),
            label: 'Trainers',
          ),
          NavigationDestination(icon: Icon(Icons.payment), label: 'Payments'),
          NavigationDestination(icon: Icon(Icons.analytics), label: 'Reports'),
        ],
      ),
      body: BlocBuilder<StatsBloc, StatsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            dashboardLoaded: (stats) => SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome, Admin!',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 20),
                  _buildStatsGrid(stats),
                  const SizedBox(height: 24),
                  if (!((stats['hasPlans'] as bool?) ?? true))
                    _buildNoPlansWarning(),
                  const SizedBox(height: 24),
                  _buildQuickActions(),
                ],
              ),
            ),
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildStatsGrid(Map<String, dynamic> stats) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        GymStatCard(
          label: 'Total Members',
          value: '${stats['totalMembers'] ?? 0}',
          icon: Icons.people,
          color: Colors.blue,
        ),
        GymStatCard(
          label: 'Active Now',
          value: '${stats['todayAttendance'] ?? 0}',
          icon: Icons.directions_run,
          color: Colors.green,
        ),
        GymStatCard(
          label: "Today's Revenue",
          value: 'रु ${stats['todayRevenue'] ?? 0}',
          icon: Icons.attach_money,
          color: Colors.orange,
        ),
        GymStatCard(
          label: 'Pending Dues',
          value: '${stats['pendingDues'] ?? 0}',
          icon: Icons.warning,
          color: Colors.red,
        ),
      ],
    );
  }

  Widget _buildQuickActions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick Actions',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 2.5,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            _buildActionChip(
              'Record Payment',
              Icons.add_card,
              () => context.push(AppRoutes.adminPayments),
            ),
            _buildActionChip(
              'Add Member',
              Icons.person_add,
              () => context.push(AppRoutes.adminMembersAdd),
            ),
            _buildActionChip(
              'Scan QR',
              Icons.qr_code_scanner,
              () => context.push(AppRoutes.qrScanner),
            ),
            _buildActionChip(
              'Manage Plans',
              Icons.assignment,
              () => context.push(AppRoutes.adminPlans),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionChip(String label, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.blue.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue.withValues(alpha: 0.2)),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.blue, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning, color: Colors.orange),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'No Membership Plans',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Create membership plans before adding members.',
                  style: TextStyle(fontSize: 12),
                ),
                TextButton(
                  onPressed: () => context.push(AppRoutes.adminPlans),
                  child: const Text('Create Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
