import 'package:flutter/material.dart';
import 'package:gym_management_app/ui/config/theme.dart';

class GymStatCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color? color;
  final Gradient? gradient;

  const GymStatCard({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    this.color,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.premiumDecoration(color: color),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: (color ?? AppTheme.primaryBlue).withOpacity(0.08),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                icon,
                color: color ?? AppTheme.primaryBlue,
                size: 22,
              ),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

extension GradientOpacity on Gradient {
  Gradient withOpacity(double opacity) {
    if (this is LinearGradient) {
      final grad = this as LinearGradient;
      return LinearGradient(
        colors: grad.colors.map((c) => c.withOpacity(opacity)).toList(),
        begin: grad.begin,
        end: grad.end,
        stops: grad.stops,
        tileMode: grad.tileMode,
        transform: grad.transform,
      );
    }
    return this;
  }
}
