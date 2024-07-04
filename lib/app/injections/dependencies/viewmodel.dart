import 'package:tech_task/presentation/app/main_viewmodel.dart';
import 'package:tech_task/presentation/screens/home/viewmodel/home_viewmodel.dart';

import '../locator.dart';

void viewmodel() {
  locator
    ..registerFactory(
      () => MainViewModel(router: locator()),
    )
    ..registerFactory(
      () => HomeViewModel(
        medicationService: locator(),
      ),
    );
}
