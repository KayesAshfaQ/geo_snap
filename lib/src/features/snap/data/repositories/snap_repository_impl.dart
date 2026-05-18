import 'dart:math';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/media_asset.dart';
import '../../domain/repositories/media_repository.dart';
import '../datasources/snap_local_data_source.dart';
import '../models/media_asset_model.dart';

@LazySingleton(as: MediaRepository)
class SnapRepositoryImpl implements MediaRepository {
  final SnapLocalDataSource localDataSource;

  SnapRepositoryImpl(this.localDataSource);

  @override
  TaskEither<Failure, Unit> saveMedia(MediaAsset media) {
    return TaskEither.tryCatch(
      () async {
        await localDataSource.saveMedia(MediaAssetModel.fromEntity(media));
        return unit;
      },
      (error, stackTrace) => CacheFailure(error.toString()),
    );
  }

  @override
  TaskEither<Failure, List<MediaAsset>> getPendingMedia() {
    return TaskEither.tryCatch(
      () async {
        final models = await localDataSource.getPendingMedia();
        return models.map((m) => m.toEntity()).toList();
      },
      (error, stackTrace) => CacheFailure(error.toString()),
    );
  }

  @override
  TaskEither<Failure, Unit> updateMediaStatus(String id, MediaStatus status, {double? progress}) {
    return TaskEither.tryCatch(
      () async {
        await localDataSource.updateMediaStatus(id, status.name, progress: progress);
        return unit;
      },
      (error, stackTrace) => CacheFailure(error.toString()),
    );
  }

  @override
  TaskEither<Failure, Unit> syncMedia(MediaAsset media) {
    return TaskEither.tryCatch(
      () async {
        // Update status to uploading
        await localDataSource.updateMediaStatus(media.id, MediaStatus.uploading.name, progress: 0.0);

        // Simulate chunked upload
        for (int i = 1; i <= 10; i++) {
          await Future.delayed(const Duration(milliseconds: 500));
          await localDataSource.updateMediaStatus(
            media.id,
            MediaStatus.uploading.name,
            progress: i / 10.0,
          );
        }

        // Mock Finalize status
        final isSuccess = Random().nextDouble() > 0.1; // 90% success rate
        if (isSuccess) {
          await localDataSource.deleteMedia(media.id);
        } else {
          await localDataSource.updateMediaStatus(
            media.id,
            MediaStatus.failed.name,
          );
        }
        return unit;
      },
      (error, stackTrace) => ServerFailure(error.toString()),
    );
  }

  @override
  TaskEither<Failure, Unit> deleteMedia(String id) {
    return TaskEither.tryCatch(
      () async {
        await localDataSource.deleteMedia(id);
        return unit;
      },
      (error, stackTrace) => CacheFailure(error.toString()),
    );
  }

  @override
  TaskEither<Failure, Unit> clearSyncedMedia() {
    return TaskEither.tryCatch(
      () async {
        await localDataSource.clearSyncedMedia();
        return unit;
      },
      (error, stackTrace) => CacheFailure(error.toString()),
    );
  }
}
