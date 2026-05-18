part of 'snap_bloc.dart';

@freezed
class SnapState with _$SnapState {
  const factory SnapState.initial() = _Initial;
  const factory SnapState.loading() = _Loading;
  const factory SnapState.ready({
    required CameraController controller,
    required double zoomLevel,
    required double minZoom,
    required double maxZoom,
    required FlashMode flashMode,
    @Default(0) int pendingUploadsCount,
    Offset? focusPoint,
    @Default(false) bool showFocusIndicator,
  }) = _Ready;
  const factory SnapState.error(String message) = _Error;
}
