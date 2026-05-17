import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/attendance_location.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required double latitude,
    required double longitude,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  factory LocationModel.fromEntity(AttendanceLocation entity) =>
      LocationModel(latitude: entity.latitude, longitude: entity.longitude);

  const LocationModel._();

  AttendanceLocation toEntity() =>
      AttendanceLocation(latitude: latitude, longitude: longitude);
}
