import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/providers/user.dart';
import 'package:frontend/src/routing/scaffold_with_nested_navigation.dart';
import 'package:frontend/src/screens/home/home_screen.dart';
import 'package:frontend/src/screens/transactions/transactions_screen.dart';
import 'package:frontend/src/widgets/banking/banks_overview.dart';
import 'package:frontend/src/widgets/banking/create_requisition.dart';
import 'package:frontend/src/widgets/shared/modal_bottom_sheet_page.dart';
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

// class MyNavigatorObserver extends NavigatorObserver {
//   @override
//   void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print('did push route');
//   }
//
//   @override
//   void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print('did pop route');
//   }
//   @override
//   void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print('did remove route');
//   }
//   @override
//   void didReplace({ Route<dynamic>? newRoute, Route<dynamic>? oldRoute }) {
//     print('did replace route');
//   }
// }

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
              navigationShell: navigationShell,
            );
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
                  path: '/transactions',
                  name: AppRoute.locationOverview.name,
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const TransactionsScreen(),
                  ),
                  routes: [
                    GoRoute(
                      path: 'getBanks',
                      name: AppRoute.locationDetail.name,
                      pageBuilder: (context, state) =>
                          const ModalBottomSheetPage(
                        child: BanksOverview(),
                      ),
                      routes: [
                        GoRoute(
                          path: 'createRequisition/:bankId',
                          name: AppRoute.locationCreate.name,
                          pageBuilder: (context, state) {
                            final bankId =
                                state.pathParameters['bankId'] as String;

                            return ModalBottomSheetPage(
                              child: CreateRequisition(
                                bankId: bankId,
                              ),
                            );
                          },
                          onExit: (context, state) {
                            ref.invalidate(getTransactionsProvider);
                            return true;
                          },
                        ),
                      ],
                    ),
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
