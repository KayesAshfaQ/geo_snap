import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class ZoomSlider extends StatelessWidget {
  final double currentZoom;
  final double minZoom;
  final double maxZoom;
  final ValueChanged<double> onChanged;

  const ZoomSlider({
    super.key,
    required this.currentZoom,
    required this.minZoom,
    required this.maxZoom,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      decoration: BoxDecoration(
        color: AppColors.black26,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text('3x', style: TextStyle(color: AppColors.white, fontSize: 10)),
          ),
          Expanded(
            child: RotatedBox(
              quarterTurns: 3,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2,
                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 10),
                  activeTrackColor: AppColors.white,
                  inactiveTrackColor: AppColors.white30,
                  thumbColor: AppColors.white,
                ),
                child: Slider(
                  value: currentZoom,
                  min: minZoom,
                  max: maxZoom,
                  onChanged: onChanged,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('1x', style: TextStyle(color: AppColors.white, fontSize: 10)),
          ),
        ],
      ),
    );
  }
}
