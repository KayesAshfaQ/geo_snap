// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setOfficeLocation,
    required TResult Function() markAttendance,
    required TResult Function() updateCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setOfficeLocation,
    TResult? Function()? markAttendance,
    TResult? Function()? updateCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setOfficeLocation,
    TResult Function()? markAttendance,
    TResult Function()? updateCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetOfficeLocation value) setOfficeLocation,
    required TResult Function(_MarkAttendance value) markAttendance,
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult? Function(_MarkAttendance value)? markAttendance,
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult Function(_MarkAttendance value)? markAttendance,
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceEventCopyWith<$Res> {
  factory $AttendanceEventCopyWith(
          AttendanceEvent value, $Res Function(AttendanceEvent) then) =
      _$AttendanceEventCopyWithImpl<$Res, AttendanceEvent>;
}

/// @nodoc
class _$AttendanceEventCopyWithImpl<$Res, $Val extends AttendanceEvent>
    implements $AttendanceEventCopyWith<$Res> {
  _$AttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AttendanceEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setOfficeLocation,
    required TResult Function() markAttendance,
    required TResult Function() updateCurrentLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setOfficeLocation,
    TResult? Function()? markAttendance,
    TResult? Function()? updateCurrentLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setOfficeLocation,
    TResult Function()? markAttendance,
    TResult Function()? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetOfficeLocation value) setOfficeLocation,
    required TResult Function(_MarkAttendance value) markAttendance,
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult? Function(_MarkAttendance value)? markAttendance,
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult Function(_MarkAttendance value)? markAttendance,
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AttendanceEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetOfficeLocationImplCopyWith<$Res> {
  factory _$$SetOfficeLocationImplCopyWith(_$SetOfficeLocationImpl value,
          $Res Function(_$SetOfficeLocationImpl) then) =
      __$$SetOfficeLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetOfficeLocationImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$SetOfficeLocationImpl>
    implements _$$SetOfficeLocationImplCopyWith<$Res> {
  __$$SetOfficeLocationImplCopyWithImpl(_$SetOfficeLocationImpl _value,
      $Res Function(_$SetOfficeLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetOfficeLocationImpl implements _SetOfficeLocation {
  const _$SetOfficeLocationImpl();

  @override
  String toString() {
    return 'AttendanceEvent.setOfficeLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetOfficeLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setOfficeLocation,
    required TResult Function() markAttendance,
    required TResult Function() updateCurrentLocation,
  }) {
    return setOfficeLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setOfficeLocation,
    TResult? Function()? markAttendance,
    TResult? Function()? updateCurrentLocation,
  }) {
    return setOfficeLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setOfficeLocation,
    TResult Function()? markAttendance,
    TResult Function()? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (setOfficeLocation != null) {
      return setOfficeLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetOfficeLocation value) setOfficeLocation,
    required TResult Function(_MarkAttendance value) markAttendance,
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return setOfficeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult? Function(_MarkAttendance value)? markAttendance,
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return setOfficeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult Function(_MarkAttendance value)? markAttendance,
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (setOfficeLocation != null) {
      return setOfficeLocation(this);
    }
    return orElse();
  }
}

abstract class _SetOfficeLocation implements AttendanceEvent {
  const factory _SetOfficeLocation() = _$SetOfficeLocationImpl;
}

/// @nodoc
abstract class _$$MarkAttendanceImplCopyWith<$Res> {
  factory _$$MarkAttendanceImplCopyWith(_$MarkAttendanceImpl value,
          $Res Function(_$MarkAttendanceImpl) then) =
      __$$MarkAttendanceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAttendanceImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$MarkAttendanceImpl>
    implements _$$MarkAttendanceImplCopyWith<$Res> {
  __$$MarkAttendanceImplCopyWithImpl(
      _$MarkAttendanceImpl _value, $Res Function(_$MarkAttendanceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAttendanceImpl implements _MarkAttendance {
  const _$MarkAttendanceImpl();

  @override
  String toString() {
    return 'AttendanceEvent.markAttendance()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAttendanceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setOfficeLocation,
    required TResult Function() markAttendance,
    required TResult Function() updateCurrentLocation,
  }) {
    return markAttendance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setOfficeLocation,
    TResult? Function()? markAttendance,
    TResult? Function()? updateCurrentLocation,
  }) {
    return markAttendance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setOfficeLocation,
    TResult Function()? markAttendance,
    TResult Function()? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (markAttendance != null) {
      return markAttendance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetOfficeLocation value) setOfficeLocation,
    required TResult Function(_MarkAttendance value) markAttendance,
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return markAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult? Function(_MarkAttendance value)? markAttendance,
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return markAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult Function(_MarkAttendance value)? markAttendance,
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (markAttendance != null) {
      return markAttendance(this);
    }
    return orElse();
  }
}

abstract class _MarkAttendance implements AttendanceEvent {
  const factory _MarkAttendance() = _$MarkAttendanceImpl;
}

/// @nodoc
abstract class _$$UpdateCurrentLocationImplCopyWith<$Res> {
  factory _$$UpdateCurrentLocationImplCopyWith(
          _$UpdateCurrentLocationImpl value,
          $Res Function(_$UpdateCurrentLocationImpl) then) =
      __$$UpdateCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCurrentLocationImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$UpdateCurrentLocationImpl>
    implements _$$UpdateCurrentLocationImplCopyWith<$Res> {
  __$$UpdateCurrentLocationImplCopyWithImpl(_$UpdateCurrentLocationImpl _value,
      $Res Function(_$UpdateCurrentLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateCurrentLocationImpl implements _UpdateCurrentLocation {
  const _$UpdateCurrentLocationImpl();

  @override
  String toString() {
    return 'AttendanceEvent.updateCurrentLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setOfficeLocation,
    required TResult Function() markAttendance,
    required TResult Function() updateCurrentLocation,
  }) {
    return updateCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setOfficeLocation,
    TResult? Function()? markAttendance,
    TResult? Function()? updateCurrentLocation,
  }) {
    return updateCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setOfficeLocation,
    TResult Function()? markAttendance,
    TResult Function()? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (updateCurrentLocation != null) {
      return updateCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetOfficeLocation value) setOfficeLocation,
    required TResult Function(_MarkAttendance value) markAttendance,
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
  }) {
    return updateCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult? Function(_MarkAttendance value)? markAttendance,
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
  }) {
    return updateCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetOfficeLocation value)? setOfficeLocation,
    TResult Function(_MarkAttendance value)? markAttendance,
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    required TResult orElse(),
  }) {
    if (updateCurrentLocation != null) {
      return updateCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentLocation implements AttendanceEvent {
  const factory _UpdateCurrentLocation() = _$UpdateCurrentLocationImpl;
}

/// @nodoc
mixin _$AttendanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
          AttendanceState value, $Res Function(AttendanceState) then) =
      _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AttendanceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AttendanceState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AttendanceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AttendanceState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AttendanceLocation? officeLocation,
      AttendanceLocation currentLocation,
      double distance,
      bool isInRange,
      String? errorMessage,
      String? successMessage});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officeLocation = freezed,
    Object? currentLocation = null,
    Object? distance = null,
    Object? isInRange = null,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_$LoadedImpl(
      officeLocation: freezed == officeLocation
          ? _value.officeLocation
          : officeLocation // ignore: cast_nullable_to_non_nullable
              as AttendanceLocation?,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as AttendanceLocation,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      isInRange: null == isInRange
          ? _value.isInRange
          : isInRange // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {this.officeLocation,
      required this.currentLocation,
      required this.distance,
      required this.isInRange,
      this.errorMessage,
      this.successMessage});

  @override
  final AttendanceLocation? officeLocation;
  @override
  final AttendanceLocation currentLocation;
  @override
  final double distance;
  @override
  final bool isInRange;
  @override
  final String? errorMessage;
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'AttendanceState.loaded(officeLocation: $officeLocation, currentLocation: $currentLocation, distance: $distance, isInRange: $isInRange, errorMessage: $errorMessage, successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.officeLocation, officeLocation) ||
                other.officeLocation == officeLocation) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.isInRange, isInRange) ||
                other.isInRange == isInRange) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, officeLocation, currentLocation,
      distance, isInRange, errorMessage, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(officeLocation, currentLocation, distance, isInRange,
        errorMessage, successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(officeLocation, currentLocation, distance, isInRange,
        errorMessage, successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(officeLocation, currentLocation, distance, isInRange,
          errorMessage, successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AttendanceState {
  const factory _Loaded(
      {final AttendanceLocation? officeLocation,
      required final AttendanceLocation currentLocation,
      required final double distance,
      required final bool isInRange,
      final String? errorMessage,
      final String? successMessage}) = _$LoadedImpl;

  AttendanceLocation? get officeLocation;
  AttendanceLocation get currentLocation;
  double get distance;
  bool get isInRange;
  String? get errorMessage;
  String? get successMessage;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AttendanceState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AttendanceLocation? officeLocation,
            AttendanceLocation currentLocation,
            double distance,
            bool isInRange,
            String? errorMessage,
            String? successMessage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AttendanceState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
