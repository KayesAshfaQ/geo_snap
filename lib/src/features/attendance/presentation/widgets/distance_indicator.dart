import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class DistanceIndicator extends StatelessWidget {
  final double distance;
  final bool isInRange;

  const DistanceIndicator({
    super.key,
    required this.distance,
    required this.isInRange,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: CircularProgressIndicator(
                value: isInRange ? 1.0 : (distance > 1000 ? 0.1 : (1000 - distance) / 1000),
                strokeWidth: 8,
                backgroundColor: colorScheme.surfaceVariant,
                valueColor: AlwaysStoppedAnimation<Color>(
                  isInRange ? AppColors.success : colorScheme.error,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${distance.toInt()}m',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary,
                  ),
                ),
                Text(
                  'AWAY',
                  style: TextStyle(
                    fontSize: 10,
                    color: theme.textTheme.bodySmall?.color ?? AppColors.greyText,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
            color: isInRange
                ? (isDark ? AppColors.successDark.withOpacity(0.2) : AppColors.successLight)
                : (isDark ? AppColors.errorDark.withOpacity(0.2) : AppColors.errorLight),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.circle,
                color: isInRange ? AppColors.success : colorScheme.error,
                size: 10,
              ),
              const SizedBox(width: 8),
              Text(
                isInRange ? 'IN RANGE' : 'OUT OF RANGE',
                style: TextStyle(
                  color: isInRange ? AppColors.success : colorScheme.error,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        if (!isInRange)
          Text(
            'Move within 50 meters of the designated office location\nto enable check-in.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: theme.textTheme.bodySmall?.color ?? AppColors.greyText,
              fontSize: 12,
            ),
          ),
      ],
    );
  }
}
