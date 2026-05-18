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
