import 'package:equatable/equatable.dart';

enum MediaStatus {
  pending,
  inQueue,
  waitingForConnection,
  uploading,
  retrying,
  success,
  failed,
}

class MediaAsset extends Equatable {
  final String id;
  final String filePath;
  final DateTime createdAt;
  final MediaStatus status;
  final int fileSize; // in bytes
  final double progress; // 0.0 to 1.0

  const MediaAsset({
    required this.id,
    required this.filePath,
    required this.createdAt,
    this.status = MediaStatus.pending,
    this.fileSize = 0,
    this.progress = 0.0,
  });

  @override
  List<Object?> get props => [id, filePath, createdAt, status, fileSize, progress];

  MediaAsset copyWith({
    String? id,
    String? filePath,
    DateTime? createdAt,
    MediaStatus? status,
    int? fileSize,
    double? progress,
  }) {
    return MediaAsset(
      id: id ?? this.id,
      filePath: filePath ?? this.filePath,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      fileSize: fileSize ?? this.fileSize,
      progress: progress ?? this.progress,
    );
  }
}
