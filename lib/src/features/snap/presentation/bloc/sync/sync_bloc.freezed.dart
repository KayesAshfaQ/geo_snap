// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SyncEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() syncRequested,
    required TResult Function() updateQueue,
    required TResult Function(List<ConnectivityResult> result)
        connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? syncRequested,
    TResult? Function()? updateQueue,
    TResult? Function(List<ConnectivityResult> result)? connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? syncRequested,
    TResult Function()? updateQueue,
    TResult Function(List<ConnectivityResult> result)? connectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SyncRequested value) syncRequested,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SyncRequested value)? syncRequested,
    TResult? Function(_UpdateQueue value)? updateQueue,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SyncRequested value)? syncRequested,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncEventCopyWith<$Res> {
  factory $SyncEventCopyWith(SyncEvent value, $Res Function(SyncEvent) then) =
      _$SyncEventCopyWithImpl<$Res, SyncEvent>;
}

/// @nodoc
class _$SyncEventCopyWithImpl<$Res, $Val extends SyncEvent>
    implements $SyncEventCopyWith<$Res> {
  _$SyncEventCopyWithImpl(this._value, this._then);

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
    extends _$SyncEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SyncEvent.started()';
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
    required TResult Function() syncRequested,
    required TResult Function() updateQueue,
    required TResult Function(List<ConnectivityResult> result)
        connectivityChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? syncRequested,
    TResult? Function()? updateQueue,
    TResult? Function(List<ConnectivityResult> result)? connectivityChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? syncRequested,
    TResult Function()? updateQueue,
    TResult Function(List<ConnectivityResult> result)? connectivityChanged,
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
    required TResult Function(_SyncRequested value) syncRequested,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SyncRequested value)? syncRequested,
    TResult? Function(_UpdateQueue value)? updateQueue,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SyncRequested value)? syncRequested,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SyncEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SyncRequestedImplCopyWith<$Res> {
  factory _$$SyncRequestedImplCopyWith(
          _$SyncRequestedImpl value, $Res Function(_$SyncRequestedImpl) then) =
      __$$SyncRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncRequestedImplCopyWithImpl<$Res>
    extends _$SyncEventCopyWithImpl<$Res, _$SyncRequestedImpl>
    implements _$$SyncRequestedImplCopyWith<$Res> {
  __$$SyncRequestedImplCopyWithImpl(
      _$SyncRequestedImpl _value, $Res Function(_$SyncRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncRequestedImpl implements _SyncRequested {
  const _$SyncRequestedImpl();

  @override
  String toString() {
    return 'SyncEvent.syncRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() syncRequested,
    required TResult Function() updateQueue,
    required TResult Function(List<ConnectivityResult> result)
        connectivityChanged,
  }) {
    return syncRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? syncRequested,
    TResult? Function()? updateQueue,
    TResult? Function(List<ConnectivityResult> result)? connectivityChanged,
  }) {
    return syncRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? syncRequested,
    TResult Function()? updateQueue,
    TResult Function(List<ConnectivityResult> result)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (syncRequested != null) {
      return syncRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SyncRequested value) syncRequested,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    return syncRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SyncRequested value)? syncRequested,
    TResult? Function(_UpdateQueue value)? updateQueue,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    return syncRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SyncRequested value)? syncRequested,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (syncRequested != null) {
      return syncRequested(this);
    }
    return orElse();
  }
}

abstract class _SyncRequested implements SyncEvent {
  const factory _SyncRequested() = _$SyncRequestedImpl;
}

/// @nodoc
abstract class _$$UpdateQueueImplCopyWith<$Res> {
  factory _$$UpdateQueueImplCopyWith(
          _$UpdateQueueImpl value, $Res Function(_$UpdateQueueImpl) then) =
      __$$UpdateQueueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateQueueImplCopyWithImpl<$Res>
    extends _$SyncEventCopyWithImpl<$Res, _$UpdateQueueImpl>
    implements _$$UpdateQueueImplCopyWith<$Res> {
  __$$UpdateQueueImplCopyWithImpl(
      _$UpdateQueueImpl _value, $Res Function(_$UpdateQueueImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateQueueImpl implements _UpdateQueue {
  const _$UpdateQueueImpl();

  @override
  String toString() {
    return 'SyncEvent.updateQueue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateQueueImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() syncRequested,
    required TResult Function() updateQueue,
    required TResult Function(List<ConnectivityResult> result)
        connectivityChanged,
  }) {
    return updateQueue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? syncRequested,
    TResult? Function()? updateQueue,
    TResult? Function(List<ConnectivityResult> result)? connectivityChanged,
  }) {
    return updateQueue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? syncRequested,
    TResult Function()? updateQueue,
    TResult Function(List<ConnectivityResult> result)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (updateQueue != null) {
      return updateQueue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SyncRequested value) syncRequested,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    return updateQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SyncRequested value)? syncRequested,
    TResult? Function(_UpdateQueue value)? updateQueue,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    return updateQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SyncRequested value)? syncRequested,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (updateQueue != null) {
      return updateQueue(this);
    }
    return orElse();
  }
}

abstract class _UpdateQueue implements SyncEvent {
  const factory _UpdateQueue() = _$UpdateQueueImpl;
}

/// @nodoc
abstract class _$$ConnectivityChangedImplCopyWith<$Res> {
  factory _$$ConnectivityChangedImplCopyWith(_$ConnectivityChangedImpl value,
          $Res Function(_$ConnectivityChangedImpl) then) =
      __$$ConnectivityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConnectivityResult> result});
}

/// @nodoc
class __$$ConnectivityChangedImplCopyWithImpl<$Res>
    extends _$SyncEventCopyWithImpl<$Res, _$ConnectivityChangedImpl>
    implements _$$ConnectivityChangedImplCopyWith<$Res> {
  __$$ConnectivityChangedImplCopyWithImpl(_$ConnectivityChangedImpl _value,
      $Res Function(_$ConnectivityChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ConnectivityChangedImpl(
      null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ConnectivityResult>,
    ));
  }
}

/// @nodoc

class _$ConnectivityChangedImpl implements _ConnectivityChanged {
  const _$ConnectivityChangedImpl(final List<ConnectivityResult> result)
      : _result = result;

  final List<ConnectivityResult> _result;
  @override
  List<ConnectivityResult> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'SyncEvent.connectivityChanged(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityChangedImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityChangedImplCopyWith<_$ConnectivityChangedImpl> get copyWith =>
      __$$ConnectivityChangedImplCopyWithImpl<_$ConnectivityChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() syncRequested,
    required TResult Function() updateQueue,
    required TResult Function(List<ConnectivityResult> result)
        connectivityChanged,
  }) {
    return connectivityChanged(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? syncRequested,
    TResult? Function()? updateQueue,
    TResult? Function(List<ConnectivityResult> result)? connectivityChanged,
  }) {
    return connectivityChanged?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? syncRequested,
    TResult Function()? updateQueue,
    TResult Function(List<ConnectivityResult> result)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SyncRequested value) syncRequested,
    required TResult Function(_UpdateQueue value) updateQueue,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    return connectivityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SyncRequested value)? syncRequested,
    TResult? Function(_UpdateQueue value)? updateQueue,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    return connectivityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SyncRequested value)? syncRequested,
    TResult Function(_UpdateQueue value)? updateQueue,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectivityChanged implements SyncEvent {
  const factory _ConnectivityChanged(final List<ConnectivityResult> result) =
      _$ConnectivityChangedImpl;

  List<ConnectivityResult> get result;
  @JsonKey(ignore: true)
  _$$ConnectivityChangedImplCopyWith<_$ConnectivityChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SyncState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
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
abstract class $SyncStateCopyWith<$Res> {
  factory $SyncStateCopyWith(SyncState value, $Res Function(SyncState) then) =
      _$SyncStateCopyWithImpl<$Res, SyncState>;
}

/// @nodoc
class _$SyncStateCopyWithImpl<$Res, $Val extends SyncState>
    implements $SyncStateCopyWith<$Res> {
  _$SyncStateCopyWithImpl(this._value, this._then);

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
    extends _$SyncStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SyncState.initial()';
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
    required TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)
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
    TResult? Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
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
    TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
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

abstract class _Initial implements SyncState {
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
    extends _$SyncStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SyncState.loading()';
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
    required TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)
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
    TResult? Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
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
    TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
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

abstract class _Loading implements SyncState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MediaAsset> queue,
      double overallProgress,
      int totalSize,
      int uploadedSize,
      bool isOnline});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SyncStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queue = null,
    Object? overallProgress = null,
    Object? totalSize = null,
    Object? uploadedSize = null,
    Object? isOnline = null,
  }) {
    return _then(_$LoadedImpl(
      queue: null == queue
          ? _value._queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<MediaAsset>,
      overallProgress: null == overallProgress
          ? _value.overallProgress
          : overallProgress // ignore: cast_nullable_to_non_nullable
              as double,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      uploadedSize: null == uploadedSize
          ? _value.uploadedSize
          : uploadedSize // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<MediaAsset> queue,
      required this.overallProgress,
      required this.totalSize,
      required this.uploadedSize,
      required this.isOnline})
      : _queue = queue;

  final List<MediaAsset> _queue;
  @override
  List<MediaAsset> get queue {
    if (_queue is EqualUnmodifiableListView) return _queue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queue);
  }

  @override
  final double overallProgress;
  @override
  final int totalSize;
  @override
  final int uploadedSize;
  @override
  final bool isOnline;

  @override
  String toString() {
    return 'SyncState.loaded(queue: $queue, overallProgress: $overallProgress, totalSize: $totalSize, uploadedSize: $uploadedSize, isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._queue, _queue) &&
            (identical(other.overallProgress, overallProgress) ||
                other.overallProgress == overallProgress) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            (identical(other.uploadedSize, uploadedSize) ||
                other.uploadedSize == uploadedSize) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_queue),
      overallProgress,
      totalSize,
      uploadedSize,
      isOnline);

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
    required TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(queue, overallProgress, totalSize, uploadedSize, isOnline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        queue, overallProgress, totalSize, uploadedSize, isOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(queue, overallProgress, totalSize, uploadedSize, isOnline);
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

abstract class _Loaded implements SyncState {
  const factory _Loaded(
      {required final List<MediaAsset> queue,
      required final double overallProgress,
      required final int totalSize,
      required final int uploadedSize,
      required final bool isOnline}) = _$LoadedImpl;

  List<MediaAsset> get queue;
  double get overallProgress;
  int get totalSize;
  int get uploadedSize;
  bool get isOnline;
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
    extends _$SyncStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'SyncState.error(message: $message)';
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
    required TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)
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
    TResult? Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
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
    TResult Function(List<MediaAsset> queue, double overallProgress,
            int totalSize, int uploadedSize, bool isOnline)?
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

abstract class _Error implements SyncState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
