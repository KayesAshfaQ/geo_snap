import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geo_snap/src/core/error/failure.dart';
import 'package:geo_snap/src/core/services/connectivity_service.dart';
import 'package:geo_snap/src/features/snap/domain/entities/media_asset.dart';
import 'package:geo_snap/src/features/snap/domain/repositories/media_repository.dart';
import 'package:geo_snap/src/features/snap/domain/usecases/sync_snaps.dart';
import 'package:mocktail/mocktail.dart';

class MockMediaRepository extends Mock implements MediaRepository {}
class MockConnectivityService extends Mock implements ConnectivityService {}

void main() {
  late SyncSnaps useCase;
  late MockMediaRepository mockRepository;
  late MockConnectivityService mockConnectivityService;

  setUp(() {
    mockRepository = MockMediaRepository();
    mockConnectivityService = MockConnectivityService();
    useCase = SyncSnaps(mockRepository, mockConnectivityService);
    registerFallbackValue(MediaAsset(
      id: '0',
      filePath: '',
      createdAt: DateTime.now(),
    ));
  });

  final tMediaAsset = MediaAsset(
    id: '1',
    filePath: 'path/to/file',
    createdAt: DateTime.now(),
  );

  final tMediaList = [tMediaAsset];

  test('should return unit and not call repository when no connection', () async {
    // arrange
    when(() => mockConnectivityService.isConnected()).thenAnswer((_) async => false);

    // act
    final result = await useCase().run();

    // assert
    expect(result, right(unit));
    verify(() => mockConnectivityService.isConnected()).called(1);
    verifyZeroInteractions(mockRepository);
  });

  test('should call repository.syncMedia for each pending item when connected', () async {
    // arrange
    when(() => mockConnectivityService.isConnected()).thenAnswer((_) async => true);
    when(() => mockRepository.getPendingMedia())
        .thenReturn(TaskEither.right(tMediaList));
    when(() => mockRepository.syncMedia(any()))
        .thenReturn(TaskEither.right(unit));

    // act
    final result = await useCase().run();

    // assert
    expect(result, right(unit));
    verify(() => mockConnectivityService.isConnected()).called(1);
    verify(() => mockRepository.getPendingMedia()).called(1);
    verify(() => mockRepository.syncMedia(tMediaAsset)).called(1);
  });

  test('should return failure when getPendingMedia fails', () async {
    // arrange
    const tFailure = ServerFailure('error');
    when(() => mockConnectivityService.isConnected()).thenAnswer((_) async => true);
    when(() => mockRepository.getPendingMedia())
        .thenReturn(TaskEither.left(tFailure));

    // act
    final result = await useCase().run();

    // assert
    expect(result, left(tFailure));
    verify(() => mockConnectivityService.isConnected()).called(1);
    verify(() => mockRepository.getPendingMedia()).called(1);
    verifyNoMoreInteractions(mockRepository);
  });

  test('should continue syncing other items even if one syncMedia fails', () async {
    // This depends on implementation, currently it awaits each one and doesn't handle individual failure inside loop explicitly (it will return first error if loop was map, but here it is for loop with await)
    // Actually current implementation:
    // for (final media in pendingList) { await repository.syncMedia(media).run(); }
    // It doesn't check result of syncMedia(media).run(), so it continues anyway.
    
    final tMedia2 = tMediaAsset.copyWith(id: '2');
    final tList = [tMediaAsset, tMedia2];

    // arrange
    when(() => mockConnectivityService.isConnected()).thenAnswer((_) async => true);
    when(() => mockRepository.getPendingMedia())
        .thenReturn(TaskEither.right(tList));
    when(() => mockRepository.syncMedia(any()))
        .thenReturn(TaskEither.left(const ServerFailure('fail')));

    // act
    final result = await useCase().run();

    // assert
    expect(result, right(unit)); // It returns success because it doesn't collect failures in current impl
    verify(() => mockRepository.syncMedia(tMediaAsset)).called(1);
    verify(() => mockRepository.syncMedia(tMedia2)).called(1);
  });
}
