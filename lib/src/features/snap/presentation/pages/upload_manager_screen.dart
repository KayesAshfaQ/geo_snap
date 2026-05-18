import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/media_asset.dart';
import '../bloc/sync/sync_bloc.dart';
import '../widgets/batch_progress_header.dart';
import '../widgets/sync_item_card.dart';

class UploadManagerScreen extends StatelessWidget {
  const UploadManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SyncBloc>()..add(const SyncEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
          title: const Text('Upload Manager'),
          actions: [
            BlocBuilder<SyncBloc, SyncState>(
              builder: (context, state) {
                final isOnline = state.maybeMap(
                  loaded: (s) => s.isOnline,
                  orElse: () => true,
                );
                return Container(
                  margin: const EdgeInsets.only(right: 20, top: 12, bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: isOnline
                        ? AppColors.success.withOpacity(0.1)
                        : AppColors.error.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: isOnline
                          ? AppColors.success.withOpacity(0.5)
                          : AppColors.error.withOpacity(0.5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: isOnline ? AppColors.success : AppColors.error,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        isOnline ? 'STABLE LINK' : 'NO CONNECTION',
                        style: TextStyle(
                          color: isOnline ? AppColors.success : AppColors.error,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<SyncBloc, SyncState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded: (queue, progress, totalSize, uploadedSize, isOnline) {
                return Column(
                  children: [
                    BatchProgressHeader(
                      progress: progress,
                      totalSize: totalSize,
                      uploadedSize: uploadedSize,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            'PENDING UPLOADS',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodySmall?.color ??
                                  AppColors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemCount: queue.length,
                        itemBuilder: (context, index) {
                          return SyncItemCard(media: queue[index]);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: queue.any((m) => m.status != MediaStatus.success)
                            ? () => context
                                .read<SyncBloc>()
                                .add(const SyncEvent.syncRequested())
                            : null,
                        child: const Text(
                          'START NEW UPLOAD BATCH',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
