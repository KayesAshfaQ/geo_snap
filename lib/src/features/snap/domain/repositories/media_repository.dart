import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failure.dart';
import '../entities/media_asset.dart';

abstract class MediaRepository {
  TaskEither<Failure, Unit> saveMedia(MediaAsset media);
  TaskEither<Failure, List<MediaAsset>> getPendingMedia();
  TaskEither<Failure, Unit> updateMediaStatus(String id, MediaStatus status, {double? progress});
  TaskEither<Failure, Unit> deleteMedia(String id);
  TaskEither<Failure, Unit> clearSyncedMedia();
}
