import 'dart:math';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/error/failure.dart';
import '../entities/media_asset.dart';
import '../repositories/media_repository.dart';

@injectable
class SyncSnaps {
  final MediaRepository repository;

  SyncSnaps(this.repository);

  TaskEither<Failure, Unit> call() {
    return TaskEither.tryCatch(
      () async {
        final connectivity = await Connectivity().checkConnectivity();
        if (connectivity.contains(ConnectivityResult.none)) {
          return unit;
        }

        final pendingResult = await repository.getPendingMedia().run();
        final List<MediaAsset> pendingList = pendingResult.fold(
          (_) => [],
          (list) => list,
        );

        for (final media in pendingList) {
          if (media.status == MediaStatus.success) continue;

          // Update status to uploading
          await repository
              .updateMediaStatus(media.id, MediaStatus.uploading, progress: 0.0)
              .run();

          // Simulate chunked upload
          for (int i = 1; i <= 10; i++) {
            await Future.delayed(const Duration(milliseconds: 500));
            await repository
                .updateMediaStatus(
                  media.id,
                  MediaStatus.uploading,
                  progress: i / 10.0,
                )
                .run();
          }

          // Mock Finalize status
          final isSuccess = Random().nextDouble() > 0.1; // 90% success rate
          if (isSuccess) {
            await repository.deleteMedia(media.id).run();
          } else {
            await repository
                .updateMediaStatus(
                  media.id,
                  MediaStatus.failed,
                )
                .run();
          }
        }
        return unit;
      },
      (error, stackTrace) => ServerFailure(error.toString()),
    );
  }
}
