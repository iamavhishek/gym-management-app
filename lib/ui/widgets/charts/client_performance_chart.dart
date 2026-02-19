import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gym_management_app/ui/config/theme.dart';

class ClientPerformanceChart extends StatelessWidget {
  const ClientPerformanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: RadarChart(
        RadarChartData(
          radarShape: RadarShape.circle,
          titlePositionPercentageOffset: 0.2,
          titleTextStyle: const TextStyle(color: Colors.grey, fontSize: 10),
          dataSets: [
            RadarDataSet(
              fillColor: AppTheme.primaryBlue.withOpacity(0.2),
              borderColor: AppTheme.primaryBlue,
              entryRadius: 2,
              dataEntries: [
                const RadarEntry(value: 80),
                const RadarEntry(value: 60),
                const RadarEntry(value: 90),
                const RadarEntry(value: 70),
                const RadarEntry(value: 85),
              ],
            ),
            RadarDataSet(
              fillColor: Colors.purple.withOpacity(0.1),
              borderColor: Colors.purple,
              entryRadius: 2,
              dataEntries: [
                const RadarEntry(value: 60),
                const RadarEntry(value: 80),
                const RadarEntry(value: 50),
                const RadarEntry(value: 90),
                const RadarEntry(value: 40),
              ],
            ),
          ],
          radarBorderData: const BorderSide(color: Colors.transparent),
          tickBorderData: BorderSide(color: Colors.grey.shade100),
          gridBorderData: BorderSide(color: Colors.grey.shade100),
        ),
      ),
    );
  }
}
