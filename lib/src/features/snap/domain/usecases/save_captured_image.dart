import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../entities/media_asset.dart';
import '../repositories/media_repository.dart';

@injectable
class SaveCapturedImage {
  final MediaRepository repository;

  SaveCapturedImage(this.repository);

  TaskEither<Failure, Unit> call(MediaAsset media) {
    return repository.saveMedia(media);
  }
}
