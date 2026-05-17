import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/attendance/presentation/pages/attendance_page.dart';

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
  ],
);
