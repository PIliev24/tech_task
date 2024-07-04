import 'package:tech_task/app/injections/dependencies/repository.dart';
import 'package:tech_task/app/injections/dependencies/service.dart';
import 'package:tech_task/app/injections/dependencies/viewmodel.dart';

import 'dependencies/api.dart';

Future<void> setupDependencies() async {
  api();
  repository();
  service();
  viewmodel();
}
