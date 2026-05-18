part of 'sync_bloc.dart';

@freezed
class SyncEvent with _$SyncEvent {
  const factory SyncEvent.started() = _Started;
  const factory SyncEvent.syncRequested() = _SyncRequested;
  const factory SyncEvent.updateQueue() = _UpdateQueue;
  const factory SyncEvent.connectivityChanged(List<ConnectivityResult> result) = _ConnectivityChanged;
}
