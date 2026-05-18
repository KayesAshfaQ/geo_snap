import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../entities/media_asset.dart';
import '../repositories/media_repository.dart';

@injectable
class GetPendingUploads {
  final MediaRepository repository;

  GetPendingUploads(this.repository);

  TaskEither<Failure, List<MediaAsset>> call() {
    return repository.getPendingMedia();
  }
}
