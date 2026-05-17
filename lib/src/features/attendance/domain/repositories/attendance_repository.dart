import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failure.dart';
import '../entities/attendance_location.dart';

abstract class AttendanceRepository {
  TaskEither<Failure, AttendanceLocation?> getOfficeLocation();
  TaskEither<Failure, Unit> saveOfficeLocation(AttendanceLocation location);
  TaskEither<Failure, Unit> markAttendance(AttendanceLocation location);
}
