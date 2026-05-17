import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../entities/attendance_location.dart';
import '../repositories/attendance_repository.dart';

@injectable
class GetOfficeLocation {
  final AttendanceRepository repository;

  GetOfficeLocation(this.repository);

  TaskEither<Failure, AttendanceLocation?> call() {
    return repository.getOfficeLocation();
  }
}
