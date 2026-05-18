// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:geo_snap/src/core/di/register_module.dart' as _i23;
import 'package:geo_snap/src/core/services/connectivity_service.dart' as _i4;
import 'package:geo_snap/src/core/services/location_service.dart' as _i6;
import 'package:geo_snap/src/features/attendance/data/datasources/attendance_local_data_source.dart'
    as _i9;
import 'package:geo_snap/src/features/attendance/data/repositories/attendance_repository_impl.dart'
    as _i11;
import 'package:geo_snap/src/features/attendance/domain/repositories/attendance_repository.dart'
    as _i10;
import 'package:geo_snap/src/features/attendance/domain/usecases/get_office_location.dart'
    as _i12;
import 'package:geo_snap/src/features/attendance/domain/usecases/mark_attendance.dart'
    as _i13;
import 'package:geo_snap/src/features/attendance/domain/usecases/save_office_location.dart'
    as _i17;
import 'package:geo_snap/src/features/attendance/presentation/bloc/attendance_bloc.dart'
    as _i19;
import 'package:geo_snap/src/features/snap/data/datasources/snap_local_data_source.dart'
    as _i8;
import 'package:geo_snap/src/features/snap/data/repositories/snap_repository_impl.dart'
    as _i15;
import 'package:geo_snap/src/features/snap/domain/repositories/media_repository.dart'
    as _i14;
import 'package:geo_snap/src/features/snap/domain/usecases/get_pending_uploads.dart'
    as _i20;
import 'package:geo_snap/src/features/snap/domain/usecases/save_captured_image.dart'
    as _i16;
import 'package:geo_snap/src/features/snap/domain/usecases/sync_snaps.dart'
    as _i18;
import 'package:geo_snap/src/features/snap/presentation/bloc/snap/snap_bloc.dart'
    as _i21;
import 'package:geo_snap/src/features/snap/presentation/bloc/sync/sync_bloc.dart'
    as _i22;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

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
    gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i4.ConnectivityService>(
        () => _i4.ConnectivityServiceImpl(gh<_i3.Connectivity>()));
    gh.lazySingleton<_i5.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i6.LocationService>(() => _i6.LocationServiceImpl());
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i8.SnapLocalDataSource>(
        () => _i8.SnapLocalDataSourceImpl(gh<_i7.SharedPreferences>()));
    gh.lazySingleton<_i9.AttendanceLocalDataSource>(
        () => _i9.AttendanceLocalDataSourceImpl(gh<_i7.SharedPreferences>()));
    gh.lazySingleton<_i10.AttendanceRepository>(() =>
        _i11.AttendanceRepositoryImpl(gh<_i9.AttendanceLocalDataSource>()));
    gh.factory<_i12.GetOfficeLocation>(
        () => _i12.GetOfficeLocation(gh<_i10.AttendanceRepository>()));
    gh.factory<_i13.MarkAttendance>(
        () => _i13.MarkAttendance(gh<_i10.AttendanceRepository>()));
    gh.lazySingleton<_i14.MediaRepository>(
        () => _i15.SnapRepositoryImpl(gh<_i8.SnapLocalDataSource>()));
    gh.factory<_i16.SaveCapturedImage>(
        () => _i16.SaveCapturedImage(gh<_i14.MediaRepository>()));
    gh.factory<_i17.SaveOfficeLocation>(
        () => _i17.SaveOfficeLocation(gh<_i10.AttendanceRepository>()));
    gh.factory<_i18.SyncSnaps>(() => _i18.SyncSnaps(
          gh<_i14.MediaRepository>(),
          gh<_i4.ConnectivityService>(),
        ));
    gh.factory<_i19.AttendanceBloc>(() => _i19.AttendanceBloc(
          getOfficeLocation: gh<_i12.GetOfficeLocation>(),
          saveOfficeLocation: gh<_i17.SaveOfficeLocation>(),
          markAttendance: gh<_i13.MarkAttendance>(),
          locationService: gh<_i6.LocationService>(),
        ));
    gh.factory<_i20.GetPendingUploads>(
        () => _i20.GetPendingUploads(gh<_i14.MediaRepository>()));
    gh.factory<_i21.SnapBloc>(() => _i21.SnapBloc(
          gh<_i16.SaveCapturedImage>(),
          gh<_i20.GetPendingUploads>(),
        ));
    gh.factory<_i22.SyncBloc>(() => _i22.SyncBloc(
          getPendingUploads: gh<_i20.GetPendingUploads>(),
          syncSnaps: gh<_i18.SyncSnaps>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i23.RegisterModule {}
