import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/attendance_location.dart';

class OfficeContextCard extends StatelessWidget {
  final AttendanceLocation? officeLocation;
  final AttendanceLocation currentLocation;
  final VoidCallback onSetLocation;

  const OfficeContextCard({
    super.key,
    required this.officeLocation,
    required this.currentLocation,
    required this.onSetLocation,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: theme.brightness == Brightness.light
                ? AppColors.shadow
                : AppColors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'STEP 1: OFFICE CONTEXT',
                style: TextStyle(
                  color: theme.textTheme.bodySmall?.color ?? AppColors.greyText,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              if (officeLocation == null)
                Icon(Icons.circle, color: colorScheme.primary, size: 10),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorScheme.surfaceVariant.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: colorScheme.outlineVariant),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map_outlined,
                    color: colorScheme.primary,
                    size: 40,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    officeLocation != null
                        ? 'Office: ${officeLocation!.latitude.toStringAsFixed(4)}, ${officeLocation!.longitude.toStringAsFixed(4)}'
                        : 'Lat: ${currentLocation.latitude.toStringAsFixed(4)}, Lon: ${currentLocation.longitude.toStringAsFixed(4)}',
                    style: TextStyle(
                      color: theme.textTheme.bodyMedium?.color ?? AppColors.greyText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'To mark your attendance, ensure your current office location is correctly identified.',
            style: TextStyle(
              color: theme.textTheme.bodyMedium?.color ?? AppColors.greyText,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: onSetLocation,
            icon: Icon(
              officeLocation != null
                  ? Icons.edit_location_alt
                  : Icons.add_circle_outline,
            ),
            label: Text(
              officeLocation != null
                  ? 'Update Office Location'
                  : 'Set Office Location',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
