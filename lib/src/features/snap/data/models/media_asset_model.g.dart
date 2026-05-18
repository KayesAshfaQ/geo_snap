// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaAssetModelImpl _$$MediaAssetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaAssetModelImpl(
      id: json['id'] as String,
      filePath: json['filePath'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: json['status'] as String,
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      progress: (json['progress'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$MediaAssetModelImplToJson(
        _$MediaAssetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filePath': instance.filePath,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': instance.status,
      'fileSize': instance.fileSize,
      'progress': instance.progress,
    };
