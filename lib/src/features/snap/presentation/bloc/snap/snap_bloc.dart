import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import '../../../domain/entities/media_asset.dart';
import '../../../domain/usecases/get_pending_uploads.dart';
import '../../../domain/usecases/save_captured_image.dart';

part 'snap_event.dart';
part 'snap_state.dart';
part 'snap_bloc.freezed.dart';

@injectable
class SnapBloc extends Bloc<SnapEvent, SnapState> {
  final SaveCapturedImage saveCapturedImage;
  final GetPendingUploads getPendingUploads;
  
  CameraController? _controller;
  List<CameraDescription> _cameras = [];
  int _currentCameraIndex = 0;
  Timer? _pollingTimer;

  SnapBloc(
    this.saveCapturedImage,
    this.getPendingUploads,
  ) : super(const SnapState.initial()) {
    on<_Started>(_onStarted);
    on<_ZoomChanged>(_onZoomChanged);
    on<_FocusChanged>(_onFocusChanged);
    on<_CameraSwitched>(_onCameraSwitched);
    on<_FlashToggled>(_onFlashToggled);
    on<_CapturePressed>(_onCapturePressed);
    on<_PendingCountUpdated>(_onPendingCountUpdated);
  }

  Future<void> _onStarted(_Started event, Emitter<SnapState> emit) async {
    emit(const SnapState.loading());
    try {
      _cameras = await availableCameras();
      if (_cameras.isEmpty) {
        emit(const SnapState.error('No cameras available'));
        return;
      }
      
      final pendingResult = await getPendingUploads().run();
      final pendingCount = pendingResult.fold((_) => 0, (list) => list.length);

      // Start polling for pending count updates (to keep badge in sync)
      _pollingTimer?.cancel();
      _pollingTimer = Timer.periodic(const Duration(seconds: 2), (_) {
        add(const SnapEvent.pendingCountUpdated());
      });

      await _initializeController(emit, pendingCount: pendingCount);
    } catch (e) {
      emit(SnapState.error('Failed to initialize camera: $e'));
    }
  }

  Future<void> _onPendingCountUpdated(_PendingCountUpdated event, Emitter<SnapState> emit) async {
    if (state is! _Ready) return;
    final currentState = state as _Ready;

    final pendingResult = await getPendingUploads().run();
    final pendingCount = pendingResult.fold((_) => currentState.pendingUploadsCount, (list) => list.length);

    if (pendingCount != currentState.pendingUploadsCount) {
      emit(currentState.copyWith(pendingUploadsCount: pendingCount));
    }
  }

  Future<void> _initializeController(Emitter<SnapState> emit, {int pendingCount = 0}) async {
    if (_controller != null) {
      await _controller!.dispose();
    }

    _controller = CameraController(
      _cameras[_currentCameraIndex],
      ResolutionPreset.high,
      enableAudio: false,
    );

    await _controller!.initialize();
    
    final minZoom = await _controller!.getMinZoomLevel();
    final maxZoom = await _controller!.getMaxZoomLevel();

    emit(SnapState.ready(
      controller: _controller!,
      zoomLevel: 1.0,
      minZoom: minZoom,
      maxZoom: maxZoom,
      flashMode: FlashMode.off,
      pendingUploadsCount: pendingCount,
    ));
  }

  Future<void> _onZoomChanged(_ZoomChanged event, Emitter<SnapState> emit) async {
    if (state is! _Ready) return;
    final currentState = state as _Ready;

    try {
      final zoom = event.zoom.clamp(currentState.minZoom, currentState.maxZoom);
      await _controller!.setZoomLevel(zoom);
      emit(currentState.copyWith(zoomLevel: zoom));
    } catch (e) {
      // Log or handle zoom error
    }
  }

  Future<void> _onFocusChanged(_FocusChanged event, Emitter<SnapState> emit) async {
    if (state is! _Ready) return;
    final currentState = state as _Ready;

    try {
      await _controller!.setFocusPoint(event.point);
      await _controller!.setExposurePoint(event.point);
      
      emit(currentState.copyWith(
        focusPoint: event.offset,
        showFocusIndicator: true,
      ));

      // Hide indicator after delay
      await Future.delayed(const Duration(seconds: 2));
      if (state is _Ready) {
        emit((state as _Ready).copyWith(showFocusIndicator: false));
      }
    } catch (e) {
      // Log or handle focus error
    }
  }

  Future<void> _onCameraSwitched(_CameraSwitched event, Emitter<SnapState> emit) async {
    if (_cameras.length < 2) return;
    
    final currentState = state is _Ready ? state as _Ready : null;
    _currentCameraIndex = (_currentCameraIndex + 1) % _cameras.length;
    emit(const SnapState.loading());
    await _initializeController(emit, pendingCount: currentState?.pendingUploadsCount ?? 0);
  }

  Future<void> _onFlashToggled(_FlashToggled event, Emitter<SnapState> emit) async {
    if (state is! _Ready) return;
    final currentState = state as _Ready;

    final nextMode = currentState.flashMode == FlashMode.off ? FlashMode.always : FlashMode.off;
    await _controller!.setFlashMode(nextMode);
    emit(currentState.copyWith(flashMode: nextMode));
  }

  Future<void> _onCapturePressed(_CapturePressed event, Emitter<SnapState> emit) async {
    if (state is! _Ready) return;
    final currentState = state as _Ready;

    try {
      final image = await _controller!.takePicture();
      final bytes = await image.length();
      
      final media = MediaAsset(
        id: const Uuid().v4(),
        filePath: image.path,
        createdAt: DateTime.now(),
        fileSize: bytes,
        status: MediaStatus.inQueue,
      );

      final result = await saveCapturedImage(media).run();
      
      result.fold(
        (failure) => null, // Handle error
        (_) {
          emit(currentState.copyWith(
            pendingUploadsCount: currentState.pendingUploadsCount + 1,
          ));
        },
      );
    } catch (e) {
      // Handle capture error
    }
  }

  @override
  Future<void> close() async {
    _pollingTimer?.cancel();
    await _controller?.dispose();
    return super.close();
  }
}
