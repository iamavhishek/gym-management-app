import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/ui/config/theme.dart';

class MembershipPieChart extends StatelessWidget {
  const MembershipPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: PieChart(
        PieChartData(
          sectionsSpace: 3,
          centerSpaceRadius: 50,
          sections: [
            PieChartSectionData(
              color: AppTheme.primaryBlue,
              value: 45,
              title: '45%\nMonthly',
              radius: 55,
              titlePositionPercentageOffset: 0.6,
              titleStyle: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            PieChartSectionData(
              color: AppTheme.secondaryTeal,
              value: 25,
              title: '25%\nYearly',
              radius: 55,
              titlePositionPercentageOffset: 0.6,
              titleStyle: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            PieChartSectionData(
              color: const Color(0xFF10B981),
              value: 30,
              title: '30%\nQuarter',
              radius: 55,
              titlePositionPercentageOffset: 0.6,
              titleStyle: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
