import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/constants/storage_keys.dart';
import '../models/location_model.dart';

abstract class AttendanceLocalDataSource {
  Future<LocationModel?> getOfficeLocation();
  Future<void> saveOfficeLocation(LocationModel location);
}

@LazySingleton(as: AttendanceLocalDataSource)
class AttendanceLocalDataSourceImpl implements AttendanceLocalDataSource {
  final SharedPreferences sharedPreferences;

  AttendanceLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<LocationModel?> getOfficeLocation() async {
    final jsonString = sharedPreferences.getString(StorageKeys.officeLocation);
    if (jsonString != null) {
      return LocationModel.fromJson(json.decode(jsonString));
    }
    return null;
  }

  @override
  Future<void> saveOfficeLocation(LocationModel location) async {
    await sharedPreferences.setString(
      StorageKeys.officeLocation,
      json.encode(location.toJson()),
    );
  }
}
