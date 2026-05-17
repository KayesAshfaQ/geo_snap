part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.started() = _Started;
  const factory AttendanceEvent.setOfficeLocation() = _SetOfficeLocation;
  const factory AttendanceEvent.markAttendance() = _MarkAttendance;
  const factory AttendanceEvent.updateCurrentLocation() = _UpdateCurrentLocation;
}
