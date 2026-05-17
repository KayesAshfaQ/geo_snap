import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/attendance_location.dart';
import '../../domain/repositories/attendance_repository.dart';
import '../datasources/attendance_local_data_source.dart';
import '../models/location_model.dart';

@LazySingleton(as: AttendanceRepository)
class AttendanceRepositoryImpl implements AttendanceRepository {
  final AttendanceLocalDataSource localDataSource;

  AttendanceRepositoryImpl(this.localDataSource);

  @override
  TaskEither<Failure, AttendanceLocation?> getOfficeLocation() {
    return TaskEither.tryCatch(
      () async {
        final model = await localDataSource.getOfficeLocation();
        return model?.toEntity();
      },
      (error, stackTrace) => CacheFailure(error.toString()),
    );
  }

  @override
  TaskEither<Failure, Unit> saveOfficeLocation(AttendanceLocation location) {
    return TaskEither.tryCatch(
      () async {
        await localDataSource.saveOfficeLocation(LocationModel.fromEntity(location));
        return unit;
      },
      (error, stackTrace) => CacheFailure(error.toString()),
    );
  }

  @override
  TaskEither<Failure, Unit> markAttendance(AttendanceLocation location) {
    // For now, we just mock the API call success
    return TaskEither.tryCatch(
      () async {
        // Mocking an API call
        await Future.delayed(const Duration(seconds: 1));
        return unit;
      },
      (error, stackTrace) => ServerFailure(error.toString()),
    );
  }
}
