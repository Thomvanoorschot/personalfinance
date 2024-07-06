import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/routing/scaffold_with_nested_navigation.dart';
import 'package:frontend/src/screens/home/home_screen.dart';
import 'package:frontend/src/screens/statements/statements_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  locationOverview,
  locationDetail,
  locationCreate,
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _locationNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'location');

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/home',
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      routes: [
        // Stateful navigation based on:
        // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return ScaffoldWithNestedNavigation(
                navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              navigatorKey: _homeNavigatorKey,
              routes: [
                // Home
                GoRoute(
                  path: '/home',
                  name: AppRoute.home.name,
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const HomeScreen(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _locationNavigatorKey,
              routes: [
                GoRoute(
                  path: '/locations',
                  name: AppRoute.locationOverview.name,
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const StatementsScreen(),
                  ),
                  routes: [
                    GoRoute(
                      path: ':id',
                      name: AppRoute.locationDetail.name,
                      pageBuilder: (context, state) {
                        final id = state.pathParameters['id'] as String;
                        return MaterialPage(
                          key: state.pageKey,
                          // child: LocationDetailScreen(id: id),
                          child: HomeScreen(),
                        );
                      },
                    ),
                    GoRoute(
                      path: 'create',
                      name: AppRoute.locationCreate.name,
                      pageBuilder: (context, state) {
                        return MaterialPage(
                          key: state.pageKey,
                          child: const HomeScreen(),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  },
);
