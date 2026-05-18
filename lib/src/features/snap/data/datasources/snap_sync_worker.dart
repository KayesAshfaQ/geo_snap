import 'dart:math';
import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/di/injection.dart';
import '../../domain/usecases/sync_snaps.dart';
import '../../domain/entities/media_asset.dart';
import '../../domain/repositories/media_repository.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    // Initialize dependencies for background thread
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();

    final syncSnaps = getIt<SyncSnaps>();
    await syncSnaps().run();

    return Future.value(true);
  });
}
