import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_task/app/injections/locator.dart';

import 'routes.dart';

void setupRouter() {
  locator.registerLazySingleton(
    () => GoRouter(
      routes: routes,
      debugLogDiagnostics: true,
      initialLocation: Routes.home,
      errorBuilder: (_, __) => const Center(
        child: Text('404 Not Found'),
      ),
      redirect: (BuildContext context, GoRouterState state) {
        return Routes.home;
      },
    ),
  );
}
