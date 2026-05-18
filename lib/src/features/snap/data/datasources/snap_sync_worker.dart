import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';
import '../../../../core/di/injection.dart';
import '../../domain/usecases/sync_snaps.dart';

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
