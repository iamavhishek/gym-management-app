import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_event.dart';
import 'package:gym_management_app/blocs/stats/stats_bloc.dart';
import 'package:gym_management_app/blocs/stats/stats_event.dart';
import 'package:gym_management_app/blocs/stats/stats_state.dart';
import 'package:gym_management_app/config/routes.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.notifications),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
              Navigator.pushReplacementNamed(context, AppRoutes.login);
            },
          ),
        ],
      ),
      body: BlocBuilder<StatsBloc, StatsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            dashboardLoaded: (stats) => RefreshIndicator(
              onRefresh: () async {
                context.read<StatsBloc>().add(
                  const StatsEvent.fetchDashboard(),
                );
              },
              child: SingleChildScrollView(
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
            ),
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
          switch (index) {
            case 1:
              Navigator.pushNamed(context, AppRoutes.adminMembers);
              break;
            case 2:
              Navigator.pushNamed(context, AppRoutes.adminTrainers);
              break;
            case 3:
              Navigator.pushNamed(context, AppRoutes.adminPayments);
              break;
            case 4:
              Navigator.pushNamed(context, AppRoutes.adminReports);
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
        _buildStatCard(
          'Total Members',
          '${stats['totalMembers'] ?? 0}',
          Icons.people,
          Colors.blue,
        ),
        _buildStatCard(
          'Active Now',
          '${stats['todayAttendance'] ?? 0}',
          Icons.directions_run,
          Colors.green,
        ),
        _buildStatCard(
          "Today's Revenue",
          'रु ${stats['todayRevenue'] ?? 0}',
          Icons.attach_money,
          Colors.orange,
        ),
        _buildStatCard(
          'Pending Dues',
          '${stats['pendingDues'] ?? 0}',
          Icons.warning,
          Colors.red,
        ),
      ],
    );
  }

  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 8),
            FittedBox(
              child: Text(
                value,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Quick Actions', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            ElevatedButton.icon(
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoutes.adminMembersAdd),
              icon: const Icon(Icons.person_add),
              label: const Text('Add Member'),
            ),
            ElevatedButton.icon(
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoutes.adminClasses),
              icon: const Icon(Icons.event),
              label: const Text('Manage Classes'),
            ),
            ElevatedButton.icon(
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoutes.qrScanner),
              icon: const Icon(Icons.qr_code_scanner),
              label: const Text('QR Check-in'),
            ),
            ElevatedButton.icon(
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoutes.adminPlans),
              icon: const Icon(Icons.card_membership),
              label: const Text('Manage Plans'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildNoPlansWarning() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: Colors.orange.shade900),
              const SizedBox(width: 8),
              Text(
                'No Membership Plans',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade900,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'You haven\'t created any membership plans yet. You need to create at least one plan before you can add members.',
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, AppRoutes.adminPlans),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange.shade800,
            ),
            child: const Text('Create Plans Now'),
          ),
        ],
      ),
    );
  }
}
