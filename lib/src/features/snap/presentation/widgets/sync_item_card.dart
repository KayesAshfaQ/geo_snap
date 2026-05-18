import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/media_asset.dart';

class SyncItemCard extends StatelessWidget {
  final MediaAsset media;

  const SyncItemCard({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceVariant.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: colorScheme.outlineVariant.withOpacity(0.5)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Thumbnail
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: FileImage(File(media.filePath)),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),

              // Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      media.filePath.split('/').last,
                      style: TextStyle(
                        color: colorScheme.onSurface,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _formatSize(media.fileSize),
                      style: TextStyle(
                        color: theme.textTheme.bodySmall?.color ?? AppColors.grey,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 8),
                    _StatusLabel(status: media.status),
                  ],
                ),
              ),
            ],
          ),
          if (media.status == MediaStatus.uploading) ...[
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: media.progress,
                backgroundColor: colorScheme.surfaceVariant,
                valueColor: AlwaysStoppedAnimation<Color>(colorScheme.primary),
                minHeight: 4,
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _formatSize(int bytes) {
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB"];
    var i = (math.log(bytes) / math.log(1024)).floor();
    return ((bytes / math.pow(1024, i)).toStringAsFixed(1)) + ' ' + suffixes[i];
  }
}

class _StatusLabel extends StatelessWidget {
  final MediaStatus status;

  const _StatusLabel({required this.status});

  @override
  Widget build(BuildContext context) {
    String text;
    Color color;
    final colorScheme = Theme.of(context).colorScheme;

    switch (status) {
      case MediaStatus.pending:
        text = 'IN QUEUE';
        color = AppColors.grey;
      case MediaStatus.inQueue:
        text = 'IN QUEUE';
        color = AppColors.grey;
      case MediaStatus.waitingForConnection:
        text = 'WAITING FOR CONNECTION';
        color = AppColors.warning;
      case MediaStatus.uploading:
        text = 'UPLOADING';
        color = colorScheme.primary;
      case MediaStatus.retrying:
        text = 'RETRYING...';
        color = AppColors.warning;
      case MediaStatus.success:
        text = 'SYNCED';
        color = AppColors.success;
      case MediaStatus.failed:
        text = 'FAILED';
        color = colorScheme.error;
    }

    return Row(
      children: [
        if (status == MediaStatus.success)
          const Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(Icons.check_circle, color: AppColors.success, size: 10),
          ),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 9,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
