import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/media_asset.dart';

part 'media_asset_model.freezed.dart';
part 'media_asset_model.g.dart';

@freezed
class MediaAssetModel with _$MediaAssetModel {
  const factory MediaAssetModel({
    required String id,
    required String filePath,
    required DateTime createdAt,
    required String status,
    @Default(0) int fileSize,
    @Default(0.0) double progress,
  }) = _MediaAssetModel;

  factory MediaAssetModel.fromJson(Map<String, dynamic> json) =>
      _$MediaAssetModelFromJson(json);

  factory MediaAssetModel.fromEntity(MediaAsset entity) => MediaAssetModel(
        id: entity.id,
        filePath: entity.filePath,
        createdAt: entity.createdAt,
        status: entity.status.name,
        fileSize: entity.fileSize,
        progress: entity.progress,
      );

  const MediaAssetModel._();

  MediaAsset toEntity() => MediaAsset(
        id: id,
        filePath: filePath,
        createdAt: createdAt,
        status: MediaStatus.values.byName(status),
        fileSize: fileSize,
        progress: progress,
      );
}
