import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/location_service.dart';
import '../../domain/entities/attendance_location.dart';
import '../../domain/usecases/get_office_location.dart';
import '../../domain/usecases/save_office_location.dart';
import '../../domain/usecases/mark_attendance.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';
part 'attendance_bloc.freezed.dart';

@injectable
class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final GetOfficeLocation getOfficeLocation;
  final SaveOfficeLocation saveOfficeLocation;
  final MarkAttendance markAttendance;
  final LocationService locationService;
  StreamSubscription<Position>? _locationSubscription;

  AttendanceBloc({
    required this.getOfficeLocation,
    required this.saveOfficeLocation,
    required this.markAttendance,
    required this.locationService,
  }) : super(const AttendanceState.initial()) {
    on<_Started>(_onStarted);
    on<_SetOfficeLocation>(_onSetOfficeLocation);
    on<_MarkAttendance>(_onMarkAttendance);
    on<_UpdateCurrentLocation>(_onUpdateCurrentLocation);
  }

  Future<void> _onStarted(_Started event, Emitter<AttendanceState> emit) async {
    emit(const AttendanceState.loading());

    // Get initial location
    final position = await locationService.getCurrentPosition();
    if (position == null) {
      emit(
        const AttendanceState.error(
          'Could not get current location. Please ensure location services are enabled and permissions are granted.',
        ),
      );
      return;
    }

    final currentLocation = AttendanceLocation(
      latitude: position.latitude,
      longitude: position.longitude,
    );

    final result = await getOfficeLocation().run();

    result.fold((failure) => emit(AttendanceState.error(failure.message)), (
      officeLocation,
    ) {
      final distance = officeLocation != null
          ? locationService.calculateDistance(currentLocation, officeLocation)
          : 0.0;
      emit(
        AttendanceState.loaded(
          officeLocation: officeLocation,
          currentLocation: currentLocation,
          distance: distance,
          isInRange: officeLocation != null && distance <= 50,
        ),
      );
    });

    // Start listening to location updates
    _locationSubscription?.cancel();
    _locationSubscription = locationService.getPositionStream().listen((position) {
      add(const AttendanceEvent.updateCurrentLocation());
    });
  }

  Future<void> _onUpdateCurrentLocation(
    _UpdateCurrentLocation event,
    Emitter<AttendanceState> emit,
  ) async {
    if (state is! _Loaded) return;
    final currentState = state as _Loaded;

    final position = await locationService.getCurrentPosition();
    if (position == null) return;

    final currentLocation = AttendanceLocation(
      latitude: position.latitude,
      longitude: position.longitude,
    );

    final distance = currentState.officeLocation != null
        ? locationService.calculateDistance(
          currentLocation,
          currentState.officeLocation!,
        )
        : 0.0;

    emit(
      currentState.copyWith(
        currentLocation: currentLocation,
        distance: distance,
        isInRange: currentState.officeLocation != null && distance <= 50,
        successMessage: null,
        errorMessage: null,
      ),
    );
  }

  Future<void> _onSetOfficeLocation(
    _SetOfficeLocation event,
    Emitter<AttendanceState> emit,
  ) async {
    if (state is! _Loaded) return;
    final currentState = state as _Loaded;

    final result = await saveOfficeLocation(currentState.currentLocation).run();

    result.fold(
      (failure) => emit(AttendanceState.error(failure.message)),
      (_) => emit(
        currentState.copyWith(
          officeLocation: currentState.currentLocation,
          distance: 0,
          isInRange: true,
          successMessage: 'Office location set successfully',
        ),
      ),
    );
  }

  Future<void> _onMarkAttendance(
    _MarkAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    if (state is! _Loaded) return;
    final currentState = state as _Loaded;

    if (!currentState.isInRange) {
      emit(
        currentState.copyWith(
          errorMessage: 'You are out of range. Must be within 50m.',
        ),
      );
      return;
    }

    final result = await markAttendance(currentState.currentLocation).run();

    result.fold(
      (failure) => emit(AttendanceState.error(failure.message)),
      (_) => emit(
        currentState.copyWith(successMessage: 'Attendance marked successfully'),
      ),
    );
  }

  @override
  Future<void> close() {
    _locationSubscription?.cancel();
    return super.close();
  }
}
