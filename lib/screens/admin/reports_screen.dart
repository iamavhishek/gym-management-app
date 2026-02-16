import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/stats/stats_bloc.dart';
import 'package:gym_management_app/blocs/stats/stats_event.dart';
import 'package:gym_management_app/blocs/stats/stats_state.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  String _selectedPeriod = 'month';

  @override
  void initState() {
    super.initState();
    _loadReports();
  }

  void _loadReports() {
    context.read<StatsBloc>().add(
      StatsEvent.fetchFinancialReport(_selectedPeriod),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
        actions: [
          DropdownButton<String>(
            value: _selectedPeriod,
            items: const [
              DropdownMenuItem(value: 'day', child: Text('Daily')),
              DropdownMenuItem(value: 'week', child: Text('Weekly')),
              DropdownMenuItem(value: 'month', child: Text('Monthly')),
            ],
            onChanged: (value) {
              if (value != null) {
                setState(() => _selectedPeriod = value);
                _loadReports();
              }
            },
          ),
        ],
      ),
      body: BlocBuilder<StatsBloc, StatsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            financialLoaded: (report) => RefreshIndicator(
              onRefresh: () async => _loadReports(),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRevenueCard(report),
                    const SizedBox(height: 16),
                    _buildRevenueChart(report),
                    const SizedBox(height: 16),
                    _buildMembershipBreakdown(report),
                  ],
                ),
              ),
            ),
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildRevenueCard(Map<String, dynamic> report) {
    final summary = report['totalSummary'] ?? {};
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Revenue Summary',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStat(
                  'Total Revenue',
                  'रु ${summary['totalRevenue'] ?? 0}',
                  Colors.green,
                ),
                _buildStat(
                  'Pending',
                  'रु ${summary['pendingRevenue'] ?? 0}',
                  Colors.orange,
                ),
                _buildStat(
                  'Refunds',
                  'रु ${summary['refundAmount'] ?? 0}',
                  Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String label, String value, Color color) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _buildRevenueChart(Map<String, dynamic> report) {
    final monthlyRevenue = (report['monthlyRevenue'] as List?) ?? [];

    if (monthlyRevenue.isEmpty) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Center(child: Text('No revenue data available')),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Revenue Trend',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  barGroups: monthlyRevenue.asMap().entries.map((entry) {
                    final revenue =
                        double.tryParse(
                          entry.value['revenue']?.toString() ?? '0',
                        ) ??
                        0;
                    return BarChartGroupData(
                      x: entry.key,
                      barRods: [
                        BarChartRodData(toY: revenue, color: Colors.blue),
                      ],
                    );
                  }).toList(),
                  titlesData: const FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMembershipBreakdown(Map<String, dynamic> report) {
    final breakdown = (report['revenueByPlan'] as List?) ?? [];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Revenue by Plan',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            if (breakdown.isEmpty)
              const Text('No data available')
            else
              ...breakdown.map(
                (plan) => ListTile(
                  title: Text((plan['plan_name'] as String?) ?? 'Unknown'),
                  trailing: Text('रु ${plan['total_revenue'] ?? 0}'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
