import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workmanager/workmanager.dart';
import '../../../domain/entities/media_asset.dart';
import '../../../domain/usecases/get_pending_uploads.dart';
import '../../../domain/usecases/sync_snaps.dart';

part 'sync_event.dart';
part 'sync_state.dart';
part 'sync_bloc.freezed.dart';

@injectable
class SyncBloc extends Bloc<SyncEvent, SyncState> {
  final GetPendingUploads getPendingUploads;
  final SyncSnaps syncSnaps;
  Timer? _pollingTimer;
  StreamSubscription? _connectivitySubscription;
  bool _isSyncing = false;

  SyncBloc({
    required this.getPendingUploads,
    required this.syncSnaps,
  }) : super(const SyncState.initial()) {
    on<_Started>(_onStarted);
    on<_SyncRequested>(_onSyncRequested);
    on<_UpdateQueue>(_onUpdateQueue);
    on<_ConnectivityChanged>(_onConnectivityChanged);
  }

  Future<void> _onStarted(_Started event, Emitter<SyncState> emit) async {
    emit(const SyncState.loading());
    
    // Initial check
    final connectivityList = await Connectivity().checkConnectivity();
    add(SyncEvent.connectivityChanged(connectivityList));

    // Listen to connectivity
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((result) {
      add(SyncEvent.connectivityChanged(result));
    });

    // Start polling for UI updates
    _pollingTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const SyncEvent.updateQueue());
    });

    add(const SyncEvent.updateQueue());
  }

  Future<void> _onUpdateQueue(_UpdateQueue event, Emitter<SyncState> emit) async {
    final result = await getPendingUploads().run();
    
    result.fold(
      (failure) => null, // Silently fail polling
      (list) {
        final totalSize = list.fold<int>(0, (sum, m) => sum + m.fileSize);
        final uploadedSize = list.fold<double>(
          0.0, 
          (sum, m) => sum + (m.status == MediaStatus.success ? m.fileSize : (m.fileSize * m.progress))
        );
        
        final overallProgress = totalSize > 0 ? uploadedSize / totalSize : 0.0;

        emit(SyncState.loaded(
          queue: list,
          overallProgress: overallProgress,
          totalSize: totalSize,
          uploadedSize: uploadedSize.toInt(),
          isOnline: state.maybeMap(loaded: (s) => s.isOnline, orElse: () => true),
        ));
      },
    );
  }

  void _onConnectivityChanged(_ConnectivityChanged event, Emitter<SyncState> emit) {
    if (state is! _Loaded) return;
    final currentState = state as _Loaded;
    
    final isOnline = !event.result.contains(ConnectivityResult.none);
    emit(currentState.copyWith(isOnline: isOnline));
  }

  Future<void> _onSyncRequested(_SyncRequested event, Emitter<SyncState> emit) async {
    if (_isSyncing) return;
    _isSyncing = true;

    // Register background task as well (for retries)
    Workmanager().registerOneOffTask(
      "snap-sync-task",
      "syncSnaps",
      constraints: Constraints(
        networkType: NetworkType.connected,
      ),
    );

    // Run foreground sync for immediate feedback without blocking the event loop
    syncSnaps().run().then((_) {
      _isSyncing = false;
      add(const SyncEvent.updateQueue());
    });
  }

  @override
  Future<void> close() {
    _pollingTimer?.cancel();
    _connectivitySubscription?.cancel();
    return super.close();
  }
}
