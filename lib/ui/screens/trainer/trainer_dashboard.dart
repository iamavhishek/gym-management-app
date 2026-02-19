import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_management_app/core/blocs/trainer/trainer_bloc.dart';
import 'package:gym_management_app/core/blocs/trainer/trainer_event.dart';
import 'package:gym_management_app/core/blocs/trainer/trainer_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:gym_management_app/ui/widgets/charts/client_performance_chart.dart';
import 'package:gym_management_app/ui/widgets/dashboard_scaffold.dart';
import 'package:gym_management_app/ui/widgets/gym_stat_card.dart';

class TrainerDashboard extends StatefulWidget {
  const TrainerDashboard({super.key});

  @override
  State<TrainerDashboard> createState() => _TrainerDashboardState();
}

class _TrainerDashboardState extends State<TrainerDashboard> {
  @override
  void initState() {
    super.initState();
    final state = context.read<TrainerBloc>().state;
    if (state is! TrainerDashboardLoaded) {
      context.read<TrainerBloc>().add(const TrainerEvent.fetchDashboard());
    }
  }

  @override
  Widget build(BuildContext context) {
    return DashboardScaffold(
      title: 'Trainer Hub',
      onRefresh: () async {
        context.read<TrainerBloc>().add(const TrainerEvent.fetchDashboard());
      },
      body: BlocBuilder<TrainerBloc, TrainerState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            dashboardLoaded: (data) => _buildBody(data),
            success: (message) => const Center(
              child: CircularProgressIndicator(),
            ), // Usually followed by re-fetch
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildBody(Map<String, dynamic> data) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 20),
          _buildStatsRow(data),
          const SizedBox(height: 24),
          _buildPerformanceSection(),
          const SizedBox(height: 24),
          _buildRecentClientsSection(data),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Coach Dashboard',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          'Empower your clients to reach their peak',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  Widget _buildStatsRow(Map<String, dynamic> data) {
    return Row(
      children: [
        Expanded(
          child: GymStatCard(
            label: 'Total Clients',
            value: '${(data['members'] as List?)?.length ?? 24}',
            icon: Icons.people_rounded,
            color: AppTheme.primaryBlue,
            gradient: AppTheme.primaryGradiant,
          ),
        ),
        const SizedBox(width: 16),
        const Expanded(
          child: GymStatCard(
            label: 'Active Today',
            value: '12',
            icon: Icons.trending_up_rounded,
            color: AppTheme.primaryBlue,
            gradient: AppTheme.accentGradiant,
          ),
        ),
      ],
    );
  }

  Widget _buildPerformanceSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: AppTheme.premiumDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Metrics Overview',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 16,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 24),
          const ClientPerformanceChart(),
          const SizedBox(height: 16),
          _buildLegend(),
        ],
      ),
    );
  }

  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _legendItem('Current', AppTheme.primaryBlue),
        const SizedBox(width: 24),
        _legendItem('Target', const Color(0xFF0D9488)),
      ],
    );
  }

  Widget _legendItem(String label, Color color) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            color: AppTheme.textSecondary,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildRecentClientsSection(Map<String, dynamic> data) {
    final members = (data['members'] as List?) ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Active Clients',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
            TextButton(
              onPressed: () => context.push(AppRoutes.trainerClients),
              child: const Text('View All'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (members.isEmpty)
          const Center(child: Text('No active clients assigned yet'))
        else
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: members.length.clamp(0, 5),
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final member = members[index];
              return _buildClientTile(member);
            },
          ),
      ],
    );
  }

  Widget _buildClientTile(dynamic member) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: AppTheme.premiumDecoration(),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.primaryBlue.withOpacity(0.1),
            child: Text(
              (member['firstName'] as String? ?? 'C')[0],
              style: const TextStyle(
                color: AppTheme.primaryBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${member['firstName'] ?? 'Client'} ${member['lastName'] ?? ''}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E293B),
                  ),
                ),
                Text(
                  (member['goals'] as String?) ?? 'Muscle Gain',
                  style: const TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
