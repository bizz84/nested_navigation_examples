import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation_beamer_example/src/routing/scaffold_with_bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerDelegate = BeamerDelegate(
    initialPath: '/a',
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '*': (context, state, data) => const ScaffoldWithBottomNavBar(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: routerDelegate,
      ),
    );
  }
}
