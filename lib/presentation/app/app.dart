import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_task/presentation/utils/viewmodel_builder.dart';

import '../theme/app_theme.dart';
import 'injections/locator.dart';
import 'main_viewmodel.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>(
      viewModelBuilder: locator,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().theme,
          routerConfig: locator<GoRouter>(),
        );
      },
    );
  }
}
