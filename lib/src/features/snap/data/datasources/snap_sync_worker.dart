import 'dart:math';
import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/di/injection.dart';
import '../../domain/entities/media_asset.dart';
import '../../domain/repositories/media_repository.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    // Initialize dependencies for background thread
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();

    final repository = getIt<MediaRepository>();
    final connectivity = await Connectivity().checkConnectivity();

    if (connectivity.contains(ConnectivityResult.none)) {
      return Future.value(false); // Retry later
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

      // TODO: Implement actual upload logic here
      // Simulate chunked upload for demonstration
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
      await repository
          .updateMediaStatus(
            media.id,
            isSuccess ? MediaStatus.success : MediaStatus.failed,
          )
          .run();
    }

    return Future.value(true);
  });
}
