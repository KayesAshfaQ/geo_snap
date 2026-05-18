import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:geo_snap/src/core/constants/storage_keys.dart';
import 'package:geo_snap/src/features/attendance/data/datasources/attendance_local_data_source.dart';
import 'package:geo_snap/src/features/attendance/data/models/location_model.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late AttendanceLocalDataSourceImpl dataSource;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = AttendanceLocalDataSourceImpl(mockSharedPreferences);
  });

  const tLocationModel = LocationModel(latitude: 10, longitude: 20);

  group('getOfficeLocation', () {
    test('should return LocationModel when there is one in SharedPreferences', () async {
      // arrange
      when(() => mockSharedPreferences.getString(any()))
          .thenReturn(json.encode(tLocationModel.toJson()));

      // act
      final result = await dataSource.getOfficeLocation();

      // assert
      expect(result, tLocationModel);
      verify(() => mockSharedPreferences.getString(StorageKeys.officeLocation)).called(1);
    });

    test('should return null when there is no value in SharedPreferences', () async {
      // arrange
      when(() => mockSharedPreferences.getString(any())).thenReturn(null);

      // act
      final result = await dataSource.getOfficeLocation();

      // assert
      expect(result, null);
    });
  });

  group('saveOfficeLocation', () {
    test('should call SharedPreferences to save the data', () async {
      // arrange
      when(() => mockSharedPreferences.setString(any(), any()))
          .thenAnswer((_) async => true);

      // act
      await dataSource.saveOfficeLocation(tLocationModel);

      // assert
      final expectedJsonString = json.encode(tLocationModel.toJson());
      verify(() => mockSharedPreferences.setString(StorageKeys.officeLocation, expectedJsonString)).called(1);
    });
  });
}
