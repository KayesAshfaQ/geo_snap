import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/attendance_bloc.dart';
import '../widgets/distance_indicator.dart';
import '../widgets/office_context_card.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AttendanceBloc>()..add(const AttendanceEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Attendance'),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () => context.push('/snap'),
            ),
          ],
        ),
        body: BlocConsumer<AttendanceBloc, AttendanceState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (_, __, ___, ____, error, success) {
                if (error != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(error),
                      backgroundColor: AppColors.error,
                    ),
                  );
                }
                if (success != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(success),
                      backgroundColor: AppColors.success,
                    ),
                  );
                }
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                    backgroundColor: AppColors.error,
                  ),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded:
                  (
                    officeLocation,
                    currentLocation,
                    distance,
                    isInRange,
                    _,
                    __,
                  ) {
                    return SingleChildScrollView(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          OfficeContextCard(
                            officeLocation: officeLocation,
                            currentLocation: currentLocation,
                            onSetLocation: () {
                              context.read<AttendanceBloc>().add(
                                const AttendanceEvent.setOfficeLocation(),
                              );
                            },
                          ),
                          const SizedBox(height: 40),
                          DistanceIndicator(
                            distance: distance,
                            isInRange: isInRange,
                          ),
                          const SizedBox(height: 60),
                          ElevatedButton(
                            onPressed: isInRange
                                ? () {
                                    context.read<AttendanceBloc>().add(
                                      const AttendanceEvent.markAttendance(),
                                    );
                                  }
                                : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  isInRange
                                      ? Icons.lock_open
                                      : Icons.lock_outline,
                                  color: AppColors.white,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Mark Attendance',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
            );
          },
        ),
      ),
    );
  }
}
