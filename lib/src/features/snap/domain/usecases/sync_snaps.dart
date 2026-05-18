import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/services/connectivity_service.dart';
import '../repositories/media_repository.dart';

@injectable
class SyncSnaps {
  final MediaRepository repository;
  final ConnectivityService connectivityService;

  SyncSnaps(this.repository, this.connectivityService);

  TaskEither<Failure, Unit> call() {
    return TaskEither<Failure, bool>.tryCatch(
      () => connectivityService.isConnected(),
      (error, stackTrace) => ServerFailure(error.toString()),
    ).flatMap((isConnected) {
      if (!isConnected) {
        return TaskEither.right(unit);
      }

      return repository.getPendingMedia().flatMap((pendingList) {
        return TaskEither<Failure, Unit>(() async {
          for (final media in pendingList) {
            await repository.syncMedia(media).run();
          }
          return right(unit);
        });
      });
    });
  }
}
