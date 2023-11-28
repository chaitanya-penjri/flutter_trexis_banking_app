import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/main_screen.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  redirect: (context, state) => null,
  initialLocation: '/home',
  routes: [
    GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) {
          return Container();
        }),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'home',
              path: '/home',
              builder: (context, state) {
                return Center(child: Container(width: 50, height: 50, color: Colors.green));
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'accounts',
              path: '/accounts',
              builder: (context, state) {
                return Center(child: Container(width: 50, height: 50, color: Colors.orange));
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'services',
              path: '/services',
              builder: (context, state) {
                return Center(child: Container(width: 50, height: 50, color: Colors.purpleAccent));
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
