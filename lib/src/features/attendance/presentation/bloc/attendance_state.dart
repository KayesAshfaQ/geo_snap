part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState.initial() = _Initial;
  const factory AttendanceState.loading() = _Loading;
  const factory AttendanceState.loaded({
    AttendanceLocation? officeLocation,
    required AttendanceLocation currentLocation,
    required double distance,
    required bool isInRange,
    String? errorMessage,
    String? successMessage,
  }) = _Loaded;
  const factory AttendanceState.error(String message) = _Error;
}
