import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../entities/attendance_location.dart';
import '../repositories/attendance_repository.dart';

@injectable
class SaveOfficeLocation {
  final AttendanceRepository repository;

  SaveOfficeLocation(this.repository);

  TaskEither<Failure, Unit> call(AttendanceLocation location) {
    return repository.saveOfficeLocation(location);
  }
}
