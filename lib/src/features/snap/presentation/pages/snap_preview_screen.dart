import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/snap/snap_bloc.dart';
import '../widgets/zoom_slider.dart';
import '../widgets/snap_bottom_bar.dart';
import '../widgets/snap_top_bar.dart';
import '../widgets/focus_indicator.dart';

class SnapPreviewScreen extends StatelessWidget {
  const SnapPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SnapBloc>()..add(const SnapEvent.started()),
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: BlocBuilder<SnapBloc, SnapState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(
                child: Text(
                  message,
                  style: const TextStyle(color: AppColors.white),
                ),
              ),
              ready:
                  (
                    controller,
                    zoom,
                    minZoom,
                    maxZoom,
                    flash,
                    count,
                    focusPoint,
                    showFocus,
                  ) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        // Camera Preview with Focus/Zoom gestures
                        GestureDetector(
                          onScaleUpdate: (details) {
                            if (details.scale != 1.0) {
                              context.read<SnapBloc>().add(
                                SnapEvent.zoomChanged(zoom * details.scale),
                              );
                            }
                          },
                          onTapDown: (details) {
                            final size = MediaQuery.of(context).size;
                            final x = details.localPosition.dx / size.width;
                            final y = details.localPosition.dy / size.height;
                            context.read<SnapBloc>().add(
                              SnapEvent.focusChanged(
                                point: Offset(x, y),
                                offset: details.localPosition,
                              ),
                            );
                          },
                          child: CameraPreview(controller),
                        ),

                        // Focus Indicator
                        if (showFocus && focusPoint != null)
                          FocusIndicator(position: focusPoint),

                        // Top Bar
                        Positioned(
                          top: 40,
                          left: 0,
                          right: 0,
                          child: SnapTopBar(flashMode: flash),
                        ),

                        // Zoom Slider (Right Side)
                        Positioned(
                          right: 20,
                          top: MediaQuery.of(context).size.height * 0.3,
                          bottom: MediaQuery.of(context).size.height * 0.3,
                          child: ZoomSlider(
                            currentZoom: zoom,
                            minZoom: minZoom,
                            maxZoom: maxZoom,
                            onChanged: (val) {
                              context.read<SnapBloc>().add(
                                SnapEvent.zoomChanged(val),
                              );
                            },
                          ),
                        ),

                        // Bottom Controls
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: SnapBottomBar(currentZoom: zoom),
                        ),
                      ],
                    );
                  },
            );
          },
        ),
      ),
    );
  }
}
