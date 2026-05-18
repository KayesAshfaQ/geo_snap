// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaAssetModel _$MediaAssetModelFromJson(Map<String, dynamic> json) {
  return _MediaAssetModel.fromJson(json);
}

/// @nodoc
mixin _$MediaAssetModel {
  String get id => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaAssetModelCopyWith<MediaAssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaAssetModelCopyWith<$Res> {
  factory $MediaAssetModelCopyWith(
          MediaAssetModel value, $Res Function(MediaAssetModel) then) =
      _$MediaAssetModelCopyWithImpl<$Res, MediaAssetModel>;
  @useResult
  $Res call(
      {String id,
      String filePath,
      DateTime createdAt,
      String status,
      int fileSize,
      double progress});
}

/// @nodoc
class _$MediaAssetModelCopyWithImpl<$Res, $Val extends MediaAssetModel>
    implements $MediaAssetModelCopyWith<$Res> {
  _$MediaAssetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filePath = null,
    Object? createdAt = null,
    Object? status = null,
    Object? fileSize = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaAssetModelImplCopyWith<$Res>
    implements $MediaAssetModelCopyWith<$Res> {
  factory _$$MediaAssetModelImplCopyWith(_$MediaAssetModelImpl value,
          $Res Function(_$MediaAssetModelImpl) then) =
      __$$MediaAssetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String filePath,
      DateTime createdAt,
      String status,
      int fileSize,
      double progress});
}

/// @nodoc
class __$$MediaAssetModelImplCopyWithImpl<$Res>
    extends _$MediaAssetModelCopyWithImpl<$Res, _$MediaAssetModelImpl>
    implements _$$MediaAssetModelImplCopyWith<$Res> {
  __$$MediaAssetModelImplCopyWithImpl(
      _$MediaAssetModelImpl _value, $Res Function(_$MediaAssetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filePath = null,
    Object? createdAt = null,
    Object? status = null,
    Object? fileSize = null,
    Object? progress = null,
  }) {
    return _then(_$MediaAssetModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaAssetModelImpl extends _MediaAssetModel {
  const _$MediaAssetModelImpl(
      {required this.id,
      required this.filePath,
      required this.createdAt,
      required this.status,
      this.fileSize = 0,
      this.progress = 0.0})
      : super._();

  factory _$MediaAssetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaAssetModelImplFromJson(json);

  @override
  final String id;
  @override
  final String filePath;
  @override
  final DateTime createdAt;
  @override
  final String status;
  @override
  @JsonKey()
  final int fileSize;
  @override
  @JsonKey()
  final double progress;

  @override
  String toString() {
    return 'MediaAssetModel(id: $id, filePath: $filePath, createdAt: $createdAt, status: $status, fileSize: $fileSize, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaAssetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, filePath, createdAt, status, fileSize, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaAssetModelImplCopyWith<_$MediaAssetModelImpl> get copyWith =>
      __$$MediaAssetModelImplCopyWithImpl<_$MediaAssetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaAssetModelImplToJson(
      this,
    );
  }
}

abstract class _MediaAssetModel extends MediaAssetModel {
  const factory _MediaAssetModel(
      {required final String id,
      required final String filePath,
      required final DateTime createdAt,
      required final String status,
      final int fileSize,
      final double progress}) = _$MediaAssetModelImpl;
  const _MediaAssetModel._() : super._();

  factory _MediaAssetModel.fromJson(Map<String, dynamic> json) =
      _$MediaAssetModelImpl.fromJson;

  @override
  String get id;
  @override
  String get filePath;
  @override
  DateTime get createdAt;
  @override
  String get status;
  @override
  int get fileSize;
  @override
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$$MediaAssetModelImplCopyWith<_$MediaAssetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
