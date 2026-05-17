// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:geo_snap/src/core/di/register_module.dart' as _i13;
import 'package:geo_snap/src/core/services/location_service.dart' as _i4;
import 'package:geo_snap/src/features/attendance/data/datasources/attendance_local_data_source.dart'
    as _i6;
import 'package:geo_snap/src/features/attendance/data/repositories/attendance_repository_impl.dart'
    as _i8;
import 'package:geo_snap/src/features/attendance/domain/repositories/attendance_repository.dart'
    as _i7;
import 'package:geo_snap/src/features/attendance/domain/usecases/get_office_location.dart'
    as _i9;
import 'package:geo_snap/src/features/attendance/domain/usecases/mark_attendance.dart'
    as _i10;
import 'package:geo_snap/src/features/attendance/domain/usecases/save_office_location.dart'
    as _i11;
import 'package:geo_snap/src/features/attendance/presentation/bloc/attendance_bloc.dart'
    as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.LocationService>(() => _i4.LocationServiceImpl());
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i6.AttendanceLocalDataSource>(
        () => _i6.AttendanceLocalDataSourceImpl(gh<_i5.SharedPreferences>()));
    gh.lazySingleton<_i7.AttendanceRepository>(() =>
        _i8.AttendanceRepositoryImpl(gh<_i6.AttendanceLocalDataSource>()));
    gh.factory<_i9.GetOfficeLocation>(
        () => _i9.GetOfficeLocation(gh<_i7.AttendanceRepository>()));
    gh.factory<_i10.MarkAttendance>(
        () => _i10.MarkAttendance(gh<_i7.AttendanceRepository>()));
    gh.factory<_i11.SaveOfficeLocation>(
        () => _i11.SaveOfficeLocation(gh<_i7.AttendanceRepository>()));
    gh.factory<_i12.AttendanceBloc>(() => _i12.AttendanceBloc(
          getOfficeLocation: gh<_i9.GetOfficeLocation>(),
          saveOfficeLocation: gh<_i11.SaveOfficeLocation>(),
          markAttendance: gh<_i10.MarkAttendance>(),
          locationService: gh<_i4.LocationService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i13.RegisterModule {}
