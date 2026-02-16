import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_event.dart';
import 'package:gym_management_app/blocs/trainer/trainer_bloc.dart';
import 'package:gym_management_app/blocs/trainer/trainer_event.dart';
import 'package:gym_management_app/blocs/trainer/trainer_state.dart';
import 'package:gym_management_app/config/routes.dart';

class TrainerDashboard extends StatefulWidget {
  const TrainerDashboard({super.key});

  @override
  State<TrainerDashboard> createState() => _TrainerDashboardState();
}

class _TrainerDashboardState extends State<TrainerDashboard> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<TrainerBloc>().add(const TrainerEvent.fetchDashboard());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainer Dashboard'),
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
      body: BlocBuilder<TrainerBloc, TrainerState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            dashboardLoaded: (data) => RefreshIndicator(
              onRefresh: () async {
                context.read<TrainerBloc>().add(
                  const TrainerEvent.fetchDashboard(),
                );
              },
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStatsRow(data),
                    const SizedBox(height: 24),
                    _buildTodaySchedule(data),
                    const SizedBox(height: 24),
                    _buildMyClients(data),
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
              Navigator.pushNamed(context, AppRoutes.trainerClients);
              break;
            case 2:
              Navigator.pushNamed(context, AppRoutes.trainerWorkouts);
              break;
            case 3:
              Navigator.pushNamed(context, AppRoutes.trainerSchedule);
              break;
          }
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.people), label: 'Clients'),
          NavigationDestination(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
        ],
      ),
    );
  }

  Widget _buildStatsRow(Map<String, dynamic> data) {
    final members = data['members'] as List? ?? [];
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            'Active Clients',
            '${data['activeClients'] ?? members.length}',
            Icons.people,
            Colors.blue,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            "Today's Sessions",
            '${data['todaySessions'] ?? 0}',
            Icons.event,
            Colors.green,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            'Rating',
            '${data['rating'] ?? 'N/A'}',
            Icons.star,
            Colors.amber,
          ),
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
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 8),
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
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

  Widget _buildTodaySchedule(Map<String, dynamic> data) {
    final todaySessions = (data['schedule'] as List?) ?? [];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Schedule",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.trainerSchedule),
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (todaySessions.isEmpty)
              const Center(child: Text('No sessions scheduled today'))
            else
              ...todaySessions
                  .take(3)
                  .map(
                    (session) => ListTile(
                      leading: CircleAvatar(
                        child: Text((session['time'] as String?) ?? ''),
                      ),
                      title: Text(
                        (session['clientName'] as String?) ?? 'Client',
                      ),
                      subtitle: Text(
                        (session['type'] as String?) ?? 'Training',
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildMyClients(Map<String, dynamic> data) {
    final members = data['members'] as List? ?? [];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Clients',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.trainerClients),
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (members.isEmpty)
              const Center(child: Text('No clients assigned'))
            else
              ...members
                  .take(5)
                  .map(
                    (member) => ListTile(
                      leading: CircleAvatar(
                        child: Text('${member['firstName']?[0] ?? 'M'}'),
                      ),
                      title: Text(
                        '${member['firstName'] ?? ''} ${member['lastName'] ?? ''}',
                      ),
                      subtitle: Text(
                        (member['goals'] as String?) ?? 'No goals set',
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.message),
                        onPressed: () {},
                      ),
                      onTap: () => Navigator.pushNamed(
                        context,
                        '${AppRoutes.trainerClients}/${member['id']}',
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
