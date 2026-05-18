import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geo_snap/src/core/error/failure.dart';
import 'package:geo_snap/src/core/services/location_service.dart';
import 'package:geo_snap/src/features/attendance/domain/entities/attendance_location.dart';
import 'package:geo_snap/src/features/attendance/domain/usecases/get_office_location.dart';
import 'package:geo_snap/src/features/attendance/domain/usecases/mark_attendance.dart';
import 'package:geo_snap/src/features/attendance/domain/usecases/save_office_location.dart';
import 'package:geo_snap/src/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mocktail/mocktail.dart';

class MockGetOfficeLocation extends Mock implements GetOfficeLocation {}
class MockSaveOfficeLocation extends Mock implements SaveOfficeLocation {}
class MockMarkAttendance extends Mock implements MarkAttendance {}
class MockLocationService extends Mock implements LocationService {}

class FakePosition extends Fake implements Position {
  @override
  final double latitude;
  @override
  final double longitude;

  FakePosition({required this.latitude, required this.longitude});
}

void main() {
  late AttendanceBloc bloc;
  late MockGetOfficeLocation mockGetOfficeLocation;
  late MockSaveOfficeLocation mockSaveOfficeLocation;
  late MockMarkAttendance mockMarkAttendance;
  late MockLocationService mockLocationService;

  setUp(() {
    mockGetOfficeLocation = MockGetOfficeLocation();
    mockSaveOfficeLocation = MockSaveOfficeLocation();
    mockMarkAttendance = MockMarkAttendance();
    mockLocationService = MockLocationService();

    bloc = AttendanceBloc(
      getOfficeLocation: mockGetOfficeLocation,
      saveOfficeLocation: mockSaveOfficeLocation,
      markAttendance: mockMarkAttendance,
      locationService: mockLocationService,
    );

    registerFallbackValue(const AttendanceLocation(latitude: 0, longitude: 0));
  });

  tearDown(() {
    bloc.close();
  });

  const tOfficeLocation = AttendanceLocation(latitude: 10, longitude: 20);
  final tPosition = FakePosition(latitude: 10.0001, longitude: 20.0001);
  final tCurrentLocation = AttendanceLocation(latitude: tPosition.latitude, longitude: tPosition.longitude);

  group('Started event', () {
    test('should emit loading and then loaded when location is available', () async {
      // arrange
      when(() => mockLocationService.getCurrentPosition()).thenAnswer((_) async => tPosition);
      when(() => mockGetOfficeLocation()).thenReturn(TaskEither.right(tOfficeLocation));
      when(() => mockLocationService.calculateDistance(any(), any())).thenReturn(10.0);
      when(() => mockLocationService.getPositionStream()).thenAnswer((_) => const Stream.empty());

      // act & assert
      final expected = [
        const AttendanceState.loading(),
        AttendanceState.loaded(
          officeLocation: tOfficeLocation,
          currentLocation: tCurrentLocation,
          distance: 10.0,
          isInRange: true,
        ),
      ];

      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const AttendanceEvent.started());
    });

    test('should emit error when getCurrentPosition returns null', () async {
      // arrange
      when(() => mockLocationService.getCurrentPosition()).thenAnswer((_) async => null);

      // act & assert
      final expected = [
        const AttendanceState.loading(),
        const AttendanceState.error(
          'Could not get current location. Please ensure location services are enabled and permissions are granted.',
        ),
      ];

      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const AttendanceEvent.started());
    });
  });

  group('MarkAttendance event', () {
    test('should emit error message when not in range', () async {
      // arrange
      // First, get into a loaded state where we are out of range
      final tFarPosition = FakePosition(latitude: 30, longitude: 40);
      final tFarLocation = AttendanceLocation(latitude: 30, longitude: 40);
      
      when(() => mockLocationService.getCurrentPosition()).thenAnswer((_) async => tFarPosition);
      when(() => mockGetOfficeLocation()).thenReturn(TaskEither.right(tOfficeLocation));
      when(() => mockLocationService.calculateDistance(any(), any())).thenReturn(1000.0);
      when(() => mockLocationService.getPositionStream()).thenAnswer((_) => const Stream.empty());

      // Start the bloc
      bloc.add(const AttendanceEvent.started());
      await expectLater(
        bloc.stream,
        emitsThrough(predicate((state) => (state as AttendanceState).maybeWhen(
          loaded: (_, __, ___, isInRange, ____, _____) => !isInRange,
          orElse: () => false,
        ))),
      );

      // act
      bloc.add(const AttendanceEvent.markAttendance());

      // assert
      expectLater(
        bloc.stream,
        emitsThrough(predicate((state) => (state as AttendanceState).maybeWhen(
          loaded: (_, __, ___, ____, errorMessage, _____) => errorMessage != null,
          orElse: () => false,
        ))),
      );
    });

    test('should call markAttendance use case when in range', () async {
      // arrange
      when(() => mockLocationService.getCurrentPosition()).thenAnswer((_) async => tPosition);
      when(() => mockGetOfficeLocation()).thenReturn(TaskEither.right(tOfficeLocation));
      when(() => mockLocationService.calculateDistance(any(), any())).thenReturn(10.0);
      when(() => mockLocationService.getPositionStream()).thenAnswer((_) => const Stream.empty());
      when(() => mockMarkAttendance(any())).thenReturn(TaskEither.right(unit));

      // Start the bloc
      bloc.add(const AttendanceEvent.started());
      await expectLater(
        bloc.stream,
        emitsThrough(predicate((state) => (state as AttendanceState).maybeWhen(
          loaded: (_, __, ___, isInRange, ____, _____) => isInRange,
          orElse: () => false,
        ))),
      );

      // act
      bloc.add(const AttendanceEvent.markAttendance());

      // assert
      await expectLater(
        bloc.stream,
        emitsThrough(predicate((state) => (state as AttendanceState).maybeWhen(
          loaded: (_, __, ___, ____, _____, successMessage) => successMessage != null,
          orElse: () => false,
        ))),
      );
      verify(() => mockMarkAttendance(any())).called(1);
    });
  });
}
