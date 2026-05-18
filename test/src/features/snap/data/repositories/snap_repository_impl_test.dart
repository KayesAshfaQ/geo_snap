import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geo_snap/src/core/error/failure.dart';
import 'package:geo_snap/src/features/snap/data/datasources/snap_local_data_source.dart';
import 'package:geo_snap/src/features/snap/data/models/media_asset_model.dart';
import 'package:geo_snap/src/features/snap/data/repositories/snap_repository_impl.dart';
import 'package:geo_snap/src/features/snap/domain/entities/media_asset.dart';
import 'package:mocktail/mocktail.dart';

class MockSnapLocalDataSource extends Mock implements SnapLocalDataSource {}

void main() {
  late SnapRepositoryImpl repository;
  late MockSnapLocalDataSource mockLocalDataSource;

  setUp(() {
    mockLocalDataSource = MockSnapLocalDataSource();
    repository = SnapRepositoryImpl(mockLocalDataSource);
    registerFallbackValue(MediaAssetModel(
      id: 'id',
      filePath: 'path',
      createdAt: DateTime.now(),
      status: 'pending',
    ));
  });

  final tMediaAsset = MediaAsset(
    id: '1',
    filePath: 'path/to/file',
    createdAt: DateTime.now(),
    status: MediaStatus.pending,
  );

  final tMediaAssetModel = MediaAssetModel.fromEntity(tMediaAsset);

  group('saveMedia', () {
    test('should call localDataSource.saveMedia', () async {
      // arrange
      when(() => mockLocalDataSource.saveMedia(any())).thenAnswer((_) async => {});

      // act
      final result = await repository.saveMedia(tMediaAsset).run();

      // assert
      expect(result, right(unit));
      verify(() => mockLocalDataSource.saveMedia(tMediaAssetModel)).called(1);
    });

    test('should return CacheFailure when localDataSource throws', () async {
      // arrange
      when(() => mockLocalDataSource.saveMedia(any())).thenThrow(Exception('error'));

      // act
      final result = await repository.saveMedia(tMediaAsset).run();

      // assert
      expect(result, left(const CacheFailure('Exception: error')));
    });
  });

  group('getPendingMedia', () {
    test('should return list of media assets from local data source', () async {
      // arrange
      when(() => mockLocalDataSource.getPendingMedia())
          .thenAnswer((_) async => [tMediaAssetModel]);

      // act
      final result = await repository.getPendingMedia().run();

      // assert
      final list = result.getOrElse((_) => []);
      expect(list, [tMediaAsset]);
      verify(() => mockLocalDataSource.getPendingMedia()).called(1);
    });
  });

  group('updateMediaStatus', () {
    test('should call localDataSource.updateMediaStatus', () async {
      // arrange
      when(() => mockLocalDataSource.updateMediaStatus(any(), any(), progress: any(named: 'progress')))
          .thenAnswer((_) async => {});

      // act
      final result = await repository.updateMediaStatus('1', MediaStatus.uploading, progress: 0.5).run();

      // assert
      expect(result, right(unit));
      verify(() => mockLocalDataSource.updateMediaStatus('1', 'uploading', progress: 0.5)).called(1);
    });
  });

  group('syncMedia', () {
    test('should update status to uploading, simulate progress and finalize', () {
      fakeAsync((async) {
        // arrange
        when(() => mockLocalDataSource.updateMediaStatus(any(), any(), progress: any(named: 'progress')))
            .thenAnswer((_) async => {});
        when(() => mockLocalDataSource.deleteMedia(any())).thenAnswer((_) async => {});

        // act
        repository.syncMedia(tMediaAsset).run();

        // Elapse time to trigger all delays (10 * 500ms = 5000ms)
        async.elapse(const Duration(seconds: 10));

        // assert
        // 1. Check initial call
        verify(() => mockLocalDataSource.updateMediaStatus(tMediaAsset.id, 'uploading', progress: 0.0)).called(1);
        
        // 2. Check loop calls (10 times)
        verify(() => mockLocalDataSource.updateMediaStatus(tMediaAsset.id, 'uploading', progress: any(named: 'progress'))).called(10);
      });
    });
  });
}
