import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/attendance/presentation/pages/attendance_page.dart';
import '../../features/snap/presentation/pages/snap_preview_screen.dart';
import '../../features/snap/presentation/pages/upload_manager_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/attendance',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Scaffold(
        body: Center(
          child: Text('GeoSnap Initialized'),
        ),
      ),
    ),
    GoRoute(
      path: '/attendance',
      builder: (context, state) => const AttendancePage(),
    ),
    GoRoute(
      path: '/snap',
      builder: (context, state) => const SnapPreviewScreen(),
    ),
    GoRoute(
      path: '/upload_manager',
      builder: (context, state) => const UploadManagerScreen(),
    ),
  ],
);
