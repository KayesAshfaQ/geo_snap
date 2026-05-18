// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snap_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(Offset point, Offset offset) focusChanged,
    required TResult Function() cameraSwitched,
    required TResult Function() flashToggled,
    required TResult Function() capturePressed,
    required TResult Function() pendingCountUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(Offset point, Offset offset)? focusChanged,
    TResult? Function()? cameraSwitched,
    TResult? Function()? flashToggled,
    TResult? Function()? capturePressed,
    TResult? Function()? pendingCountUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(Offset point, Offset offset)? focusChanged,
    TResult Function()? cameraSwitched,
    TResult Function()? flashToggled,
    TResult Function()? capturePressed,
    TResult Function()? pendingCountUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_CameraSwitched value) cameraSwitched,
    required TResult Function(_FlashToggled value) flashToggled,
    required TResult Function(_CapturePressed value) capturePressed,
    required TResult Function(_PendingCountUpdated value) pendingCountUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_CameraSwitched value)? cameraSwitched,
    TResult? Function(_FlashToggled value)? flashToggled,
    TResult? Function(_CapturePressed value)? capturePressed,
    TResult? Function(_PendingCountUpdated value)? pendingCountUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_CameraSwitched value)? cameraSwitched,
    TResult Function(_FlashToggled value)? flashToggled,
    TResult Function(_CapturePressed value)? capturePressed,
    TResult Function(_PendingCountUpdated value)? pendingCountUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapEventCopyWith<$Res> {
  factory $SnapEventCopyWith(SnapEvent value, $Res Function(SnapEvent) then) =
      _$SnapEventCopyWithImpl<$Res, SnapEvent>;
}

/// @nodoc
class _$SnapEventCopyWithImpl<$Res, $Val extends SnapEvent>
    implements $SnapEventCopyWith<$Res> {
  _$SnapEventCopyWithImpl(this._value, this._then);

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
    extends _$SnapEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SnapEvent.started()';
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
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(Offset point, Offset offset) focusChanged,
    required TResult Function() cameraSwitched,
    required TResult Function() flashToggled,
    required TResult Function() capturePressed,
    required TResult Function() pendingCountUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(Offset point, Offset offset)? focusChanged,
    TResult? Function()? cameraSwitched,
    TResult? Function()? flashToggled,
    TResult? Function()? capturePressed,
    TResult? Function()? pendingCountUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(Offset point, Offset offset)? focusChanged,
    TResult Function()? cameraSwitched,
    TResult Function()? flashToggled,
    TResult Function()? capturePressed,
    TResult Function()? pendingCountUpdated,
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
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_CameraSwitched value) cameraSwitched,
    required TResult Function(_FlashToggled value) flashToggled,
    required TResult Function(_CapturePressed value) capturePressed,
    required TResult Function(_PendingCountUpdated value) pendingCountUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_CameraSwitched value)? cameraSwitched,
    TResult? Function(_FlashToggled value)? flashToggled,
    TResult? Function(_CapturePressed value)? capturePressed,
    TResult? Function(_PendingCountUpdated value)? pendingCountUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_CameraSwitched value)? cameraSwitched,
    TResult Function(_FlashToggled value)? flashToggled,
    TResult Function(_CapturePressed value)? capturePressed,
    TResult Function(_PendingCountUpdated value)? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SnapEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ZoomChangedImplCopyWith<$Res> {
  factory _$$ZoomChangedImplCopyWith(
          _$ZoomChangedImpl value, $Res Function(_$ZoomChangedImpl) then) =
      __$$ZoomChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double zoom});
}

/// @nodoc
class __$$ZoomChangedImplCopyWithImpl<$Res>
    extends _$SnapEventCopyWithImpl<$Res, _$ZoomChangedImpl>
    implements _$$ZoomChangedImplCopyWith<$Res> {
  __$$ZoomChangedImplCopyWithImpl(
      _$ZoomChangedImpl _value, $Res Function(_$ZoomChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoom = null,
  }) {
    return _then(_$ZoomChangedImpl(
      null == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ZoomChangedImpl implements _ZoomChanged {
  const _$ZoomChangedImpl(this.zoom);

  @override
  final double zoom;

  @override
  String toString() {
    return 'SnapEvent.zoomChanged(zoom: $zoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoomChangedImpl &&
            (identical(other.zoom, zoom) || other.zoom == zoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoomChangedImplCopyWith<_$ZoomChangedImpl> get copyWith =>
      __$$ZoomChangedImplCopyWithImpl<_$ZoomChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(Offset point, Offset offset) focusChanged,
    required TResult Function() cameraSwitched,
    required TResult Function() flashToggled,
    required TResult Function() capturePressed,
    required TResult Function() pendingCountUpdated,
  }) {
    return zoomChanged(zoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(Offset point, Offset offset)? focusChanged,
    TResult? Function()? cameraSwitched,
    TResult? Function()? flashToggled,
    TResult? Function()? capturePressed,
    TResult? Function()? pendingCountUpdated,
  }) {
    return zoomChanged?.call(zoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(Offset point, Offset offset)? focusChanged,
    TResult Function()? cameraSwitched,
    TResult Function()? flashToggled,
    TResult Function()? capturePressed,
    TResult Function()? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (zoomChanged != null) {
      return zoomChanged(zoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_CameraSwitched value) cameraSwitched,
    required TResult Function(_FlashToggled value) flashToggled,
    required TResult Function(_CapturePressed value) capturePressed,
    required TResult Function(_PendingCountUpdated value) pendingCountUpdated,
  }) {
    return zoomChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_CameraSwitched value)? cameraSwitched,
    TResult? Function(_FlashToggled value)? flashToggled,
    TResult? Function(_CapturePressed value)? capturePressed,
    TResult? Function(_PendingCountUpdated value)? pendingCountUpdated,
  }) {
    return zoomChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_CameraSwitched value)? cameraSwitched,
    TResult Function(_FlashToggled value)? flashToggled,
    TResult Function(_CapturePressed value)? capturePressed,
    TResult Function(_PendingCountUpdated value)? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (zoomChanged != null) {
      return zoomChanged(this);
    }
    return orElse();
  }
}

abstract class _ZoomChanged implements SnapEvent {
  const factory _ZoomChanged(final double zoom) = _$ZoomChangedImpl;

  double get zoom;
  @JsonKey(ignore: true)
  _$$ZoomChangedImplCopyWith<_$ZoomChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FocusChangedImplCopyWith<$Res> {
  factory _$$FocusChangedImplCopyWith(
          _$FocusChangedImpl value, $Res Function(_$FocusChangedImpl) then) =
      __$$FocusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset point, Offset offset});
}

/// @nodoc
class __$$FocusChangedImplCopyWithImpl<$Res>
    extends _$SnapEventCopyWithImpl<$Res, _$FocusChangedImpl>
    implements _$$FocusChangedImplCopyWith<$Res> {
  __$$FocusChangedImplCopyWithImpl(
      _$FocusChangedImpl _value, $Res Function(_$FocusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? offset = null,
  }) {
    return _then(_$FocusChangedImpl(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Offset,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$FocusChangedImpl implements _FocusChanged {
  const _$FocusChangedImpl({required this.point, required this.offset});

  @override
  final Offset point;
  @override
  final Offset offset;

  @override
  String toString() {
    return 'SnapEvent.focusChanged(point: $point, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FocusChangedImpl &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FocusChangedImplCopyWith<_$FocusChangedImpl> get copyWith =>
      __$$FocusChangedImplCopyWithImpl<_$FocusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(Offset point, Offset offset) focusChanged,
    required TResult Function() cameraSwitched,
    required TResult Function() flashToggled,
    required TResult Function() capturePressed,
    required TResult Function() pendingCountUpdated,
  }) {
    return focusChanged(point, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(Offset point, Offset offset)? focusChanged,
    TResult? Function()? cameraSwitched,
    TResult? Function()? flashToggled,
    TResult? Function()? capturePressed,
    TResult? Function()? pendingCountUpdated,
  }) {
    return focusChanged?.call(point, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(Offset point, Offset offset)? focusChanged,
    TResult Function()? cameraSwitched,
    TResult Function()? flashToggled,
    TResult Function()? capturePressed,
    TResult Function()? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (focusChanged != null) {
      return focusChanged(point, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_CameraSwitched value) cameraSwitched,
    required TResult Function(_FlashToggled value) flashToggled,
    required TResult Function(_CapturePressed value) capturePressed,
    required TResult Function(_PendingCountUpdated value) pendingCountUpdated,
  }) {
    return focusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_CameraSwitched value)? cameraSwitched,
    TResult? Function(_FlashToggled value)? flashToggled,
    TResult? Function(_CapturePressed value)? capturePressed,
    TResult? Function(_PendingCountUpdated value)? pendingCountUpdated,
  }) {
    return focusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_CameraSwitched value)? cameraSwitched,
    TResult Function(_FlashToggled value)? flashToggled,
    TResult Function(_CapturePressed value)? capturePressed,
    TResult Function(_PendingCountUpdated value)? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (focusChanged != null) {
      return focusChanged(this);
    }
    return orElse();
  }
}

abstract class _FocusChanged implements SnapEvent {
  const factory _FocusChanged(
      {required final Offset point,
      required final Offset offset}) = _$FocusChangedImpl;

  Offset get point;
  Offset get offset;
  @JsonKey(ignore: true)
  _$$FocusChangedImplCopyWith<_$FocusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraSwitchedImplCopyWith<$Res> {
  factory _$$CameraSwitchedImplCopyWith(_$CameraSwitchedImpl value,
          $Res Function(_$CameraSwitchedImpl) then) =
      __$$CameraSwitchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraSwitchedImplCopyWithImpl<$Res>
    extends _$SnapEventCopyWithImpl<$Res, _$CameraSwitchedImpl>
    implements _$$CameraSwitchedImplCopyWith<$Res> {
  __$$CameraSwitchedImplCopyWithImpl(
      _$CameraSwitchedImpl _value, $Res Function(_$CameraSwitchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CameraSwitchedImpl implements _CameraSwitched {
  const _$CameraSwitchedImpl();

  @override
  String toString() {
    return 'SnapEvent.cameraSwitched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CameraSwitchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(Offset point, Offset offset) focusChanged,
    required TResult Function() cameraSwitched,
    required TResult Function() flashToggled,
    required TResult Function() capturePressed,
    required TResult Function() pendingCountUpdated,
  }) {
    return cameraSwitched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(Offset point, Offset offset)? focusChanged,
    TResult? Function()? cameraSwitched,
    TResult? Function()? flashToggled,
    TResult? Function()? capturePressed,
    TResult? Function()? pendingCountUpdated,
  }) {
    return cameraSwitched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(Offset point, Offset offset)? focusChanged,
    TResult Function()? cameraSwitched,
    TResult Function()? flashToggled,
    TResult Function()? capturePressed,
    TResult Function()? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (cameraSwitched != null) {
      return cameraSwitched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_CameraSwitched value) cameraSwitched,
    required TResult Function(_FlashToggled value) flashToggled,
    required TResult Function(_CapturePressed value) capturePressed,
    required TResult Function(_PendingCountUpdated value) pendingCountUpdated,
  }) {
    return cameraSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_CameraSwitched value)? cameraSwitched,
    TResult? Function(_FlashToggled value)? flashToggled,
    TResult? Function(_CapturePressed value)? capturePressed,
    TResult? Function(_PendingCountUpdated value)? pendingCountUpdated,
  }) {
    return cameraSwitched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_CameraSwitched value)? cameraSwitched,
    TResult Function(_FlashToggled value)? flashToggled,
    TResult Function(_CapturePressed value)? capturePressed,
    TResult Function(_PendingCountUpdated value)? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (cameraSwitched != null) {
      return cameraSwitched(this);
    }
    return orElse();
  }
}

abstract class _CameraSwitched implements SnapEvent {
  const factory _CameraSwitched() = _$CameraSwitchedImpl;
}

/// @nodoc
abstract class _$$FlashToggledImplCopyWith<$Res> {
  factory _$$FlashToggledImplCopyWith(
          _$FlashToggledImpl value, $Res Function(_$FlashToggledImpl) then) =
      __$$FlashToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlashToggledImplCopyWithImpl<$Res>
    extends _$SnapEventCopyWithImpl<$Res, _$FlashToggledImpl>
    implements _$$FlashToggledImplCopyWith<$Res> {
  __$$FlashToggledImplCopyWithImpl(
      _$FlashToggledImpl _value, $Res Function(_$FlashToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlashToggledImpl implements _FlashToggled {
  const _$FlashToggledImpl();

  @override
  String toString() {
    return 'SnapEvent.flashToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlashToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(Offset point, Offset offset) focusChanged,
    required TResult Function() cameraSwitched,
    required TResult Function() flashToggled,
    required TResult Function() capturePressed,
    required TResult Function() pendingCountUpdated,
  }) {
    return flashToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(Offset point, Offset offset)? focusChanged,
    TResult? Function()? cameraSwitched,
    TResult? Function()? flashToggled,
    TResult? Function()? capturePressed,
    TResult? Function()? pendingCountUpdated,
  }) {
    return flashToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(Offset point, Offset offset)? focusChanged,
    TResult Function()? cameraSwitched,
    TResult Function()? flashToggled,
    TResult Function()? capturePressed,
    TResult Function()? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (flashToggled != null) {
      return flashToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_CameraSwitched value) cameraSwitched,
    required TResult Function(_FlashToggled value) flashToggled,
    required TResult Function(_CapturePressed value) capturePressed,
    required TResult Function(_PendingCountUpdated value) pendingCountUpdated,
  }) {
    return flashToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_CameraSwitched value)? cameraSwitched,
    TResult? Function(_FlashToggled value)? flashToggled,
    TResult? Function(_CapturePressed value)? capturePressed,
    TResult? Function(_PendingCountUpdated value)? pendingCountUpdated,
  }) {
    return flashToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_CameraSwitched value)? cameraSwitched,
    TResult Function(_FlashToggled value)? flashToggled,
    TResult Function(_CapturePressed value)? capturePressed,
    TResult Function(_PendingCountUpdated value)? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (flashToggled != null) {
      return flashToggled(this);
    }
    return orElse();
  }
}

abstract class _FlashToggled implements SnapEvent {
  const factory _FlashToggled() = _$FlashToggledImpl;
}

/// @nodoc
abstract class _$$CapturePressedImplCopyWith<$Res> {
  factory _$$CapturePressedImplCopyWith(_$CapturePressedImpl value,
          $Res Function(_$CapturePressedImpl) then) =
      __$$CapturePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CapturePressedImplCopyWithImpl<$Res>
    extends _$SnapEventCopyWithImpl<$Res, _$CapturePressedImpl>
    implements _$$CapturePressedImplCopyWith<$Res> {
  __$$CapturePressedImplCopyWithImpl(
      _$CapturePressedImpl _value, $Res Function(_$CapturePressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CapturePressedImpl implements _CapturePressed {
  const _$CapturePressedImpl();

  @override
  String toString() {
    return 'SnapEvent.capturePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CapturePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(Offset point, Offset offset) focusChanged,
    required TResult Function() cameraSwitched,
    required TResult Function() flashToggled,
    required TResult Function() capturePressed,
    required TResult Function() pendingCountUpdated,
  }) {
    return capturePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(Offset point, Offset offset)? focusChanged,
    TResult? Function()? cameraSwitched,
    TResult? Function()? flashToggled,
    TResult? Function()? capturePressed,
    TResult? Function()? pendingCountUpdated,
  }) {
    return capturePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(Offset point, Offset offset)? focusChanged,
    TResult Function()? cameraSwitched,
    TResult Function()? flashToggled,
    TResult Function()? capturePressed,
    TResult Function()? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (capturePressed != null) {
      return capturePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_CameraSwitched value) cameraSwitched,
    required TResult Function(_FlashToggled value) flashToggled,
    required TResult Function(_CapturePressed value) capturePressed,
    required TResult Function(_PendingCountUpdated value) pendingCountUpdated,
  }) {
    return capturePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_CameraSwitched value)? cameraSwitched,
    TResult? Function(_FlashToggled value)? flashToggled,
    TResult? Function(_CapturePressed value)? capturePressed,
    TResult? Function(_PendingCountUpdated value)? pendingCountUpdated,
  }) {
    return capturePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_CameraSwitched value)? cameraSwitched,
    TResult Function(_FlashToggled value)? flashToggled,
    TResult Function(_CapturePressed value)? capturePressed,
    TResult Function(_PendingCountUpdated value)? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (capturePressed != null) {
      return capturePressed(this);
    }
    return orElse();
  }
}

abstract class _CapturePressed implements SnapEvent {
  const factory _CapturePressed() = _$CapturePressedImpl;
}

/// @nodoc
abstract class _$$PendingCountUpdatedImplCopyWith<$Res> {
  factory _$$PendingCountUpdatedImplCopyWith(_$PendingCountUpdatedImpl value,
          $Res Function(_$PendingCountUpdatedImpl) then) =
      __$$PendingCountUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingCountUpdatedImplCopyWithImpl<$Res>
    extends _$SnapEventCopyWithImpl<$Res, _$PendingCountUpdatedImpl>
    implements _$$PendingCountUpdatedImplCopyWith<$Res> {
  __$$PendingCountUpdatedImplCopyWithImpl(_$PendingCountUpdatedImpl _value,
      $Res Function(_$PendingCountUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PendingCountUpdatedImpl implements _PendingCountUpdated {
  const _$PendingCountUpdatedImpl();

  @override
  String toString() {
    return 'SnapEvent.pendingCountUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingCountUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(Offset point, Offset offset) focusChanged,
    required TResult Function() cameraSwitched,
    required TResult Function() flashToggled,
    required TResult Function() capturePressed,
    required TResult Function() pendingCountUpdated,
  }) {
    return pendingCountUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(Offset point, Offset offset)? focusChanged,
    TResult? Function()? cameraSwitched,
    TResult? Function()? flashToggled,
    TResult? Function()? capturePressed,
    TResult? Function()? pendingCountUpdated,
  }) {
    return pendingCountUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(Offset point, Offset offset)? focusChanged,
    TResult Function()? cameraSwitched,
    TResult Function()? flashToggled,
    TResult Function()? capturePressed,
    TResult Function()? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (pendingCountUpdated != null) {
      return pendingCountUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_CameraSwitched value) cameraSwitched,
    required TResult Function(_FlashToggled value) flashToggled,
    required TResult Function(_CapturePressed value) capturePressed,
    required TResult Function(_PendingCountUpdated value) pendingCountUpdated,
  }) {
    return pendingCountUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_CameraSwitched value)? cameraSwitched,
    TResult? Function(_FlashToggled value)? flashToggled,
    TResult? Function(_CapturePressed value)? capturePressed,
    TResult? Function(_PendingCountUpdated value)? pendingCountUpdated,
  }) {
    return pendingCountUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_CameraSwitched value)? cameraSwitched,
    TResult Function(_FlashToggled value)? flashToggled,
    TResult Function(_CapturePressed value)? capturePressed,
    TResult Function(_PendingCountUpdated value)? pendingCountUpdated,
    required TResult orElse(),
  }) {
    if (pendingCountUpdated != null) {
      return pendingCountUpdated(this);
    }
    return orElse();
  }
}

abstract class _PendingCountUpdated implements SnapEvent {
  const factory _PendingCountUpdated() = _$PendingCountUpdatedImpl;
}

/// @nodoc
mixin _$SnapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)
        ready,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapStateCopyWith<$Res> {
  factory $SnapStateCopyWith(SnapState value, $Res Function(SnapState) then) =
      _$SnapStateCopyWithImpl<$Res, SnapState>;
}

/// @nodoc
class _$SnapStateCopyWithImpl<$Res, $Val extends SnapState>
    implements $SnapStateCopyWith<$Res> {
  _$SnapStateCopyWithImpl(this._value, this._then);

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
    extends _$SnapStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SnapState.initial()';
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)
        ready,
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
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
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SnapState {
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
    extends _$SnapStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SnapState.loading()';
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)
        ready,
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
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
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SnapState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CameraController controller,
      double zoomLevel,
      double minZoom,
      double maxZoom,
      FlashMode flashMode,
      int pendingUploadsCount,
      Offset? focusPoint,
      bool showFocusIndicator});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$SnapStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? zoomLevel = null,
    Object? minZoom = null,
    Object? maxZoom = null,
    Object? flashMode = null,
    Object? pendingUploadsCount = null,
    Object? focusPoint = freezed,
    Object? showFocusIndicator = null,
  }) {
    return _then(_$ReadyImpl(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
      zoomLevel: null == zoomLevel
          ? _value.zoomLevel
          : zoomLevel // ignore: cast_nullable_to_non_nullable
              as double,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as double,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as double,
      flashMode: null == flashMode
          ? _value.flashMode
          : flashMode // ignore: cast_nullable_to_non_nullable
              as FlashMode,
      pendingUploadsCount: null == pendingUploadsCount
          ? _value.pendingUploadsCount
          : pendingUploadsCount // ignore: cast_nullable_to_non_nullable
              as int,
      focusPoint: freezed == focusPoint
          ? _value.focusPoint
          : focusPoint // ignore: cast_nullable_to_non_nullable
              as Offset?,
      showFocusIndicator: null == showFocusIndicator
          ? _value.showFocusIndicator
          : showFocusIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl(
      {required this.controller,
      required this.zoomLevel,
      required this.minZoom,
      required this.maxZoom,
      required this.flashMode,
      this.pendingUploadsCount = 0,
      this.focusPoint,
      this.showFocusIndicator = false});

  @override
  final CameraController controller;
  @override
  final double zoomLevel;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  @override
  final FlashMode flashMode;
  @override
  @JsonKey()
  final int pendingUploadsCount;
  @override
  final Offset? focusPoint;
  @override
  @JsonKey()
  final bool showFocusIndicator;

  @override
  String toString() {
    return 'SnapState.ready(controller: $controller, zoomLevel: $zoomLevel, minZoom: $minZoom, maxZoom: $maxZoom, flashMode: $flashMode, pendingUploadsCount: $pendingUploadsCount, focusPoint: $focusPoint, showFocusIndicator: $showFocusIndicator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.zoomLevel, zoomLevel) ||
                other.zoomLevel == zoomLevel) &&
            (identical(other.minZoom, minZoom) || other.minZoom == minZoom) &&
            (identical(other.maxZoom, maxZoom) || other.maxZoom == maxZoom) &&
            (identical(other.flashMode, flashMode) ||
                other.flashMode == flashMode) &&
            (identical(other.pendingUploadsCount, pendingUploadsCount) ||
                other.pendingUploadsCount == pendingUploadsCount) &&
            (identical(other.focusPoint, focusPoint) ||
                other.focusPoint == focusPoint) &&
            (identical(other.showFocusIndicator, showFocusIndicator) ||
                other.showFocusIndicator == showFocusIndicator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, zoomLevel, minZoom,
      maxZoom, flashMode, pendingUploadsCount, focusPoint, showFocusIndicator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)
        ready,
    required TResult Function(String message) error,
  }) {
    return ready(controller, zoomLevel, minZoom, maxZoom, flashMode,
        pendingUploadsCount, focusPoint, showFocusIndicator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
    TResult? Function(String message)? error,
  }) {
    return ready?.call(controller, zoomLevel, minZoom, maxZoom, flashMode,
        pendingUploadsCount, focusPoint, showFocusIndicator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(controller, zoomLevel, minZoom, maxZoom, flashMode,
          pendingUploadsCount, focusPoint, showFocusIndicator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements SnapState {
  const factory _Ready(
      {required final CameraController controller,
      required final double zoomLevel,
      required final double minZoom,
      required final double maxZoom,
      required final FlashMode flashMode,
      final int pendingUploadsCount,
      final Offset? focusPoint,
      final bool showFocusIndicator}) = _$ReadyImpl;

  CameraController get controller;
  double get zoomLevel;
  double get minZoom;
  double get maxZoom;
  FlashMode get flashMode;
  int get pendingUploadsCount;
  Offset? get focusPoint;
  bool get showFocusIndicator;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
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
    extends _$SnapStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'SnapState.error(message: $message)';
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)
        ready,
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
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
            CameraController controller,
            double zoomLevel,
            double minZoom,
            double maxZoom,
            FlashMode flashMode,
            int pendingUploadsCount,
            Offset? focusPoint,
            bool showFocusIndicator)?
        ready,
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
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SnapState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
