import 'package:equatable/equatable.dart';

class AttendanceLocation extends Equatable {
  final double latitude;
  final double longitude;

  const AttendanceLocation({required this.latitude, required this.longitude});

  @override
  List<Object?> get props => [latitude, longitude];
}
