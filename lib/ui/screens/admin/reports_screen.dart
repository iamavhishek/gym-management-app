import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/stats/stats_bloc.dart';
import 'package:gym_management_app/core/blocs/stats/stats_event.dart';
import 'package:gym_management_app/core/blocs/stats/stats_state.dart';
import 'package:gym_management_app/ui/config/theme.dart';

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
          if (state is StatsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is StatsFinancialLoaded) {
            return RefreshIndicator(
              onRefresh: () async => _loadReports(),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRevenueCard(state.report),
                    const SizedBox(height: 16),
                    _buildRevenueChart(state.report),
                    const SizedBox(height: 16),
                    _buildMembershipBreakdown(state.report),
                  ],
                ),
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

  Widget _buildRevenueCard(Map<String, dynamic> report) {
    final summary = report['totalSummary'] ?? {};
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Revenue Summary',
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryDark,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStat(
                'Total Revenue',
                'रु ${summary['totalRevenue'] ?? 0}',
                const Color(0xFF10B981),
              ),
              Container(width: 1, height: 40, color: AppTheme.outlineLight),
              _buildStat(
                'Pending',
                'रु ${summary['pendingRevenue'] ?? 0}',
                const Color(0xFFF59E0B),
              ),
              Container(width: 1, height: 40, color: AppTheme.outlineLight),
              _buildStat(
                'Refunds',
                'रु ${summary['refundAmount'] ?? 0}',
                const Color(0xFFEF4444),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String label, String value, Color color) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12,
            color: AppTheme.textSecondary,
          ),
        ),
      ],
    );
  }

  Widget _buildRevenueChart(Map<String, dynamic> report) {
    final monthlyRevenue = (report['monthlyRevenue'] as List?) ?? [];

    if (monthlyRevenue.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(32),
        decoration: AppTheme.premiumDecoration(),
        child: Center(
          child: Text(
            'No revenue data available',
            style: GoogleFonts.inter(
              color: AppTheme.textSecondary,
              fontSize: 14,
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Revenue Trend',
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryDark,
            ),
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
                      BarChartRodData(
                        toY: revenue,
                        color: AppTheme.primaryBlue,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                        width: 16,
                      ),
                    ],
                  );
                }).toList(),
                titlesData: const FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                gridData: const FlGridData(show: false),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMembershipBreakdown(Map<String, dynamic> report) {
    final breakdown = (report['revenueByPlan'] as List?) ?? [];

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Revenue by Plan',
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryDark,
            ),
          ),
          const SizedBox(height: 16),
          if (breakdown.isEmpty)
            Text(
              'No data available',
              style: GoogleFonts.inter(
                color: AppTheme.textSecondary,
                fontSize: 14,
              ),
            )
          else
            ...breakdown.map(
              (plan) => Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: AppTheme.surfaceLight,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (plan['plan_name'] as String?) ?? 'Unknown',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppTheme.textMain,
                      ),
                    ),
                    Text(
                      'रु ${plan['total_revenue'] ?? 0}',
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: AppTheme.primaryBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
