part of 'snap_bloc.dart';

@freezed
class SnapEvent with _$SnapEvent {
  const factory SnapEvent.started() = _Started;
  const factory SnapEvent.zoomChanged(double zoom) = _ZoomChanged;
  const factory SnapEvent.focusChanged({
    required Offset point,
    required Offset offset,
  }) = _FocusChanged;
  const factory SnapEvent.cameraSwitched() = _CameraSwitched;
  const factory SnapEvent.flashToggled() = _FlashToggled;
  const factory SnapEvent.capturePressed() = _CapturePressed;
}
