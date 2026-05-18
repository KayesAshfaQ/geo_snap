import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/snap/snap_bloc.dart';

class SnapTopBar extends StatelessWidget {
  final FlashMode flashMode;

  const SnapTopBar({super.key, required this.flashMode});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.close, color: AppColors.white, size: 30),
            onPressed: () => context.pop(),
          ),
          const Text(
            'MANUAL',
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  flashMode == FlashMode.always
                      ? Icons.flash_on
                      : Icons.flash_off,
                  color: AppColors.white,
                ),
                onPressed: () {
                  context.read<SnapBloc>().add(const SnapEvent.flashToggled());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
