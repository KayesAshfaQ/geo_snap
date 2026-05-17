import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import '../../features/attendance/domain/entities/attendance_location.dart';

abstract class LocationService {
  Future<Position?> getCurrentPosition();
  double calculateDistance(AttendanceLocation start, AttendanceLocation end);
  Stream<Position> getPositionStream();
}

@LazySingleton(as: LocationService)
class LocationServiceImpl implements LocationService {
  @override
  Future<Position?> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return null;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return null;
    }

    if (permission == LocationPermission.deniedForever) return null;

    return await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
      ),
    );
  }

  @override
  double calculateDistance(AttendanceLocation start, AttendanceLocation end) {
    const distance = Distance();
    return distance.as(
      LengthUnit.Meter,
      LatLng(start.latitude, start.longitude),
      LatLng(end.latitude, end.longitude),
    );
  }

  @override
  Stream<Position> getPositionStream() {
    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    );
  }
}
