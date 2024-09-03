
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:frontend/src/clients/banking_client.dart";
import "package:frontend/src/providers/categorize_transaction.dart";
import "package:frontend/src/providers/transactions.dart";
import "package:frontend/src/routing/scaffold_with_nested_navigation.dart";
import "package:frontend/src/screens/home/home_screen.dart";
import "package:frontend/src/screens/insights/insights_screen.dart";
import "package:frontend/src/screens/transactions/transaction_detail_screen.dart";
import "package:frontend/src/screens/transactions/transactions_screen.dart";
import "package:frontend/src/screens/banking/banks_overview_screen.dart";
import "package:frontend/src/screens/banking/create_requisition_screen.dart";
import "package:frontend/src/screens/transactions/categorize_transaction_screen.dart";
import "package:frontend/src/widgets/pages/modal_bottom_sheet_page.dart";
import "package:frontend/src/widgets/pages/popup_card_page.dart";
import "package:go_router/go_router.dart";

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "home");
final _transactionNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "transaction");
final _insightsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "insights");
String? previousLocation;
bool? refreshedSamePage;

// class MyNavigatorObserver extends NavigatorObserver {
//   @override
//   void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print("did push route");
//   }
//
//   @override
//   void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print("did pop route");
//   }
//   @override
//   void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print("did remove route");
//   }
//   @override
//   void didReplace({ Route<dynamic>? newRoute, Route<dynamic>? oldRoute }) {
//     print("did replace route");
//   }
// }

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: "/home",
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      redirect: (context, state) {
        if (state.fullPath == previousLocation) {
          refreshedSamePage = true;
        }
        previousLocation = state.fullPath;
      },
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
                  path: "/home",
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const HomeScreen(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _transactionNavigatorKey,
              routes: [
                GoRoute(
                  path: "/transactions",
                  redirect: (context, state) {
                    if (state.fullPath == "/transactions" && refreshedSamePage == true) {
                      final state = transactionScreenKey.currentState;
                      if (state != null) {
                        state.scrollToTop();
                      }
                    }
                  },
                  pageBuilder: (context, state) {
                    if (state.uri.queryParameters.isNotEmpty && state.uri.queryParameters.containsKey("reload")) {
                      ref.read(transactionsProvider.notifier).getTransactions(reset: true);
                      ref.invalidate(getBankAccountsProvider);
                    }

                    return NoTransitionPage(
                      key: state.pageKey,
                      child: TransactionsScreen(),
                    );
                  },
                  routes: [
                    GoRoute(
                      path: "getBanks",
                      pageBuilder: (context, state) => const ModalBottomSheetPage(
                        title: "Banks",
                        child: BanksOverviewScreen(),
                      ),
                      routes: [
                        GoRoute(
                          path: "createRequisition/:bankId/:bankName",
                          pageBuilder: (context, state) {
                            final bankId = state.pathParameters["bankId"] as String;
                            final bankName = state.pathParameters["bankName"] as String;

                            return ModalBottomSheetPage(
                              title: bankName,
                              child: CreateRequisitionScreen(
                                bankId: bankId,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    GoRoute(
                      parentNavigatorKey: _transactionNavigatorKey,
                      path: "categorize",
                      pageBuilder: (context, state) {
                        return const PopupCardPage(
                          tag: "categorize",
                          child: CategorizeTransactionScreen(),
                        );
                      },
                      routes: [],
                    ),
                    GoRoute(
                      path: "detail/:transactionId",
                      pageBuilder: (context, state) {
                        final transactionId = state.pathParameters["transactionId"] as String;

                        final categorizeTransactionNotifier = ref.read(categorizeTransactionProvider.notifier);

                        return ModalBottomSheetPage(
                          isScrollControlled: false,
                          titleWidget: Row(
                            children: [
                              const Text("(Re)categorize"),
                              IconButton(
                                onPressed: () async {
                                  await categorizeTransactionNotifier.getSpecificTransaction(transactionId);
                                  if (context.mounted) {
                                    context.go("/transactions/categorize");
                                  }
                                },
                                icon: const Icon(
                                  Icons.dashboard_customize,
                                ),
                              ),
                            ],
                          ),
                          child: TransactionDetailScreen(
                            transactionId: transactionId,
                          ),
                        );
                      },
                      routes: [],
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _insightsNavigatorKey,
              routes: [
                GoRoute(
                  path: "/insights",
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const InsightsScreen(),
                  ),
                  routes: const [],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  },
);
