import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/snap/snap_bloc.dart';

class SnapBottomBar extends StatelessWidget {
  final double currentZoom;

  const SnapBottomBar({super.key, required this.currentZoom});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<SnapBloc, SnapState>(
      builder: (context, state) {
        final pendingCount = state.maybeWhen(
          ready: (_, __, ___, ____, _____, count, ______, _______) => count,
          orElse: () => 0,
        );

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.transparent, AppColors.black54],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Zoom Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ZoomButton(
                    label: '0.5',
                    zoom: 0.5,
                    currentZoom: currentZoom,
                  ),
                  const SizedBox(width: 15),
                  _ZoomButton(label: '1x', zoom: 1.0, currentZoom: currentZoom),
                  const SizedBox(width: 15),
                  _ZoomButton(label: '2', zoom: 2.0, currentZoom: currentZoom),
                ],
              ),
              const SizedBox(height: 25),

              // Main Capture Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Thumbnail/Badge
                  GestureDetector(
                    onTap: () => context.push('/upload_manager'),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColors.white24,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.white,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.photo_library,
                            color: AppColors.white,
                          ),
                        ),
                        if (pendingCount > 0)
                          Positioned(
                            top: -5,
                            right: -5,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: colorScheme.primary,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '$pendingCount',
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),

                  // Shutter Button
                  GestureDetector(
                    onTap: () {
                      context.read<SnapBloc>().add(
                        const SnapEvent.capturePressed(),
                      );
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.white, width: 4),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),

                  // Switch Camera
                  IconButton(
                    icon: const Icon(
                      Icons.cameraswitch,
                      color: AppColors.white,
                      size: 35,
                    ),
                    onPressed: () {
                      context.read<SnapBloc>().add(
                        const SnapEvent.cameraSwitched(),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Upload Batch Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: pendingCount > 0
                      ? () => context.push('/upload_manager')
                      : null,
                  icon: const Icon(Icons.cloud_upload_outlined),
                  label: Text('UPLOAD BATCH ($pendingCount)'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.primary,
                    foregroundColor: AppColors.white,
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ZoomButton extends StatelessWidget {
  final String label;
  final double zoom;
  final double currentZoom;

  const _ZoomButton({
    required this.label,
    required this.zoom,
    required this.currentZoom,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = (currentZoom - zoom).abs() < 0.1;
    return GestureDetector(
      onTap: () {
        context.read<SnapBloc>().add(SnapEvent.zoomChanged(zoom));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.white : AppColors.black45,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? AppColors.black : AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
