import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/src/routing/scaffold_with_bottom_nav_bar.dart';
import 'package:nested_navigation_gorouter_example/src/screens/details_screen.dart';
import 'package:nested_navigation_gorouter_example/src/screens/root_screen.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

const goRouterTabs = [
  ScaffoldWithNavBarTabItem(
    initialLocation: '/a',
    icon: Icon(Icons.home),
    label: 'Section A',
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/b',
    icon: Icon(Icons.settings),
    label: 'Section B',
  ),
];

final goRouter = GoRouter(
  initialLocation: '/a',
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithBottomNavBar(child: child);
      },
      routes: [
        // Products
        GoRoute(
          path: '/a',
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const RootScreen(label: 'A', detailsPath: '/a/details'),
          ),
          routes: [
            GoRoute(
              path: 'details',
              builder: (context, state) => const DetailsScreen(label: 'A'),
            ),
          ],
        ),
        // Shopping Cart
        GoRoute(
          path: '/b',
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const RootScreen(label: 'B', detailsPath: '/b/details'),
          ),
          routes: [
            GoRoute(
              path: 'details',
              builder: (context, state) => const DetailsScreen(label: 'B'),
            ),
          ],
        ),
      ],
    ),
  ],
);
