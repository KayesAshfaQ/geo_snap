import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geo_snap/src/core/error/failure.dart';
import 'package:geo_snap/src/features/attendance/data/datasources/attendance_local_data_source.dart';
import 'package:geo_snap/src/features/attendance/data/models/location_model.dart';
import 'package:geo_snap/src/features/attendance/data/repositories/attendance_repository_impl.dart';
import 'package:geo_snap/src/features/attendance/domain/entities/attendance_location.dart';
import 'package:mocktail/mocktail.dart';

class MockAttendanceLocalDataSource extends Mock implements AttendanceLocalDataSource {}

void main() {
  late AttendanceRepositoryImpl repository;
  late MockAttendanceLocalDataSource mockLocalDataSource;

  setUp(() {
    mockLocalDataSource = MockAttendanceLocalDataSource();
    repository = AttendanceRepositoryImpl(mockLocalDataSource);
    registerFallbackValue(const LocationModel(latitude: 0, longitude: 0));
  });

  const tLocation = AttendanceLocation(latitude: 10, longitude: 20);
  const tLocationModel = LocationModel(latitude: 10, longitude: 20);

  group('getOfficeLocation', () {
    test('should return attendance location when local data source has data', () async {
      // arrange
      when(() => mockLocalDataSource.getOfficeLocation())
          .thenAnswer((_) async => tLocationModel);

      // act
      final result = await repository.getOfficeLocation().run();

      // assert
      expect(result, right(tLocation));
      verify(() => mockLocalDataSource.getOfficeLocation()).called(1);
    });

    test('should return null when local data source has no data', () async {
      // arrange
      when(() => mockLocalDataSource.getOfficeLocation()).thenAnswer((_) async => null);

      // act
      final result = await repository.getOfficeLocation().run();

      // assert
      expect(result, right(null));
    });

    test('should return CacheFailure when local data source throws', () async {
      // arrange
      when(() => mockLocalDataSource.getOfficeLocation()).thenThrow(Exception('error'));

      // act
      final result = await repository.getOfficeLocation().run();

      // assert
      expect(result, left(const CacheFailure('Exception: error')));
    });
  });

  group('saveOfficeLocation', () {
    test('should call local data source to save location', () async {
      // arrange
      when(() => mockLocalDataSource.saveOfficeLocation(any()))
          .thenAnswer((_) async => {});

      // act
      final result = await repository.saveOfficeLocation(tLocation).run();

      // assert
      expect(result, right(unit));
      verify(() => mockLocalDataSource.saveOfficeLocation(tLocationModel)).called(1);
    });
  });

  group('markAttendance', () {
    test('should return unit after simulated delay', () async {
      // act
      final result = await repository.markAttendance(tLocation).run();

      // assert
      expect(result, right(unit));
    });
  });
}
