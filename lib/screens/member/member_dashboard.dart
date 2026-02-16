import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_event.dart';
import 'package:gym_management_app/blocs/member/member_bloc.dart';
import 'package:gym_management_app/blocs/member/member_event.dart';
import 'package:gym_management_app/blocs/member/member_state.dart';
import 'package:gym_management_app/config/routes.dart';
import 'package:gym_management_app/models/member_model.dart';

class MemberDashboard extends StatefulWidget {
  const MemberDashboard({super.key});

  @override
  State<MemberDashboard> createState() => _MemberDashboardState();
}

class _MemberDashboardState extends State<MemberDashboard> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<MemberBloc>().add(const MemberEvent.profileStarted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Dashboard'),
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
      body: BlocBuilder<MemberBloc, MemberState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            profileLoaded: (profile) => _buildBody(profile),
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
              Navigator.pushNamed(context, AppRoutes.memberWorkouts);
              break;
            case 2:
              Navigator.pushNamed(context, AppRoutes.memberClasses);
              break;
            case 3:
              Navigator.pushNamed(context, AppRoutes.memberAttendance);
              break;
            case 4:
              Navigator.pushNamed(context, AppRoutes.memberProfile);
              break;
          }
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          NavigationDestination(icon: Icon(Icons.event), label: 'Classes'),
          NavigationDestination(
            icon: Icon(Icons.check_circle),
            label: 'Attendance',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildBody(MemberModel profile) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<MemberBloc>().add(const MemberEvent.profileStarted());
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWelcomeCard(profile),
            const SizedBox(height: 16),
            _buildMembershipCard(profile),
            const SizedBox(height: 16),
            _buildQuickStats(profile),
            const SizedBox(height: 16),
            _buildUpcomingClasses(profile),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeCard(MemberModel profile) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: Text(
                profile.user?.firstName[0] ?? 'M',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back,',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    '${profile.user?.firstName ?? 'Member'}!',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoutes.qrScanner),
              icon: const Icon(Icons.qr_code),
              label: const Text('Check In'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMembershipCard(MemberModel profile) {
    final expiryDateTime = profile.expiryDate != null
        ? DateTime.tryParse(profile.expiryDate!)
        : null;
    final daysRemaining = expiryDateTime != null
        ? expiryDateTime.difference(DateTime.now()).inDays
        : 0;
    final isExpiringSoon = daysRemaining <= 7 && daysRemaining > 0;
    final isExpired = daysRemaining <= 0;

    return Card(
      color: isExpired
          ? Colors.red.shade50
          : (isExpiringSoon ? Colors.orange.shade50 : null),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Membership',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: profile.status == 'active'
                        ? Colors.green
                        : Colors.red,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    profile.status?.toUpperCase() ?? 'UNKNOWN',
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              profile.planName ?? 'No Plan',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text('ID: ${profile.membershipNumber}'),
            const SizedBox(height: 8),
            if (isExpired)
              const Text(
                '⚠️ Your membership has expired!',
                style: TextStyle(color: Colors.red),
              )
            else if (isExpiringSoon)
              Text(
                '⚠️ Expires in $daysRemaining days',
                style: const TextStyle(color: Colors.orange),
              )
            else
              Text('Valid until: ${_formatDate(profile.expiryDate)}'),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickStats(MemberModel profile) {
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            'This Week',
            '${profile.attendanceRate ?? 0}%',
            Icons.calendar_today,
            Colors.blue,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            'Goals',
            profile.goals ?? 'Not Set',
            Icons.flag,
            Colors.green,
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
            Icon(icon, color: color, size: 32),
            const SizedBox(height: 8),
            Text(
              value,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(title, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }

  Widget _buildUpcomingClasses(MemberModel profile) {
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
                  'Upcoming Classes',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.memberClasses),
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text('No upcoming classes booked'),
          ],
        ),
      ),
    );
  }

  String _formatDate(String? dateStr) {
    if (dateStr == null) return 'N/A';
    final date = DateTime.tryParse(dateStr);
    if (date == null) return dateStr;
    return '${date.day}/${date.month}/${date.year}';
  }
}
