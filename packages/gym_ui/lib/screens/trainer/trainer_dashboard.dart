import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_core/blocs/trainer/trainer_bloc.dart';
import 'package:gym_core/blocs/trainer/trainer_event.dart';
import 'package:gym_core/blocs/trainer/trainer_state.dart';
import 'package:gym_core/config/routes.dart';
import 'package:gym_ui/widgets/dashboard_scaffold.dart';
import 'package:gym_ui/widgets/gym_stat_card.dart';

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
    return DashboardScaffold(
      title: 'Trainer Dashboard',
      onRefresh: () async {
        context.read<TrainerBloc>().add(const TrainerEvent.fetchDashboard());
      },
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
          switch (index) {
            case 1:
              context.push(AppRoutes.trainerClients);
              break;
            case 2:
              context.push(AppRoutes.trainerWorkouts);
              break;
            case 3:
              context.push(AppRoutes.trainerSchedule);
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
      body: BlocBuilder<TrainerBloc, TrainerState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            dashboardLoaded: (data) => SingleChildScrollView(
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
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildStatsRow(Map<String, dynamic> data) {
    final members = data['members'] as List? ?? [];
    return Row(
      children: [
        Expanded(
          child: GymStatCard(
            label: 'Active Clients',
            value: '${data['activeClients'] ?? members.length}',
            icon: Icons.people,
            color: Colors.blue,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GymStatCard(
            label: "Today's Sessions",
            value: '${data['todaySessions'] ?? 0}',
            icon: Icons.event,
            color: Colors.green,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GymStatCard(
            label: 'Rating',
            value: '${data['rating'] ?? 'N/A'}',
            icon: Icons.star,
            color: Colors.amber,
          ),
        ),
      ],
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
                  onPressed: () => context.push(AppRoutes.trainerSchedule),
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (todaySessions.isEmpty)
              const Center(child: Text('No sessions scheduled today'))
            else
              ...todaySessions.take(3).map(
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
                  onPressed: () => context.push(AppRoutes.trainerClients),
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (members.isEmpty)
              const Center(child: Text('No clients assigned'))
            else
              ...members.take(5).map(
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
                      onTap: () => context.push(
                        '${AppRoutes.adminMembers}/${member['id']}',
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
