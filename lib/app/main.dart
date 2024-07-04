import 'package:flutter/material.dart';

import '../presentation/app/app.dart';
import '../presentation/app/router/setup.dart';
import 'injections/setup.dart';

Future<void> main() async {
  await setupDependencies();
  setupRouter();

  runApp(
    const MyApp(),
  );
}
