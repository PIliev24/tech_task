import 'package:tech_task/app/injections/locator.dart';
import 'package:tech_task/data/repository/handler/request_handler.dart';
import 'package:tech_task/data/repository/medication/medication_repository.dart';
import 'package:tech_task/domain/repositories/medication_repository.dart';

void repository() {
  locator
    ..registerLazySingleton(
      () => RequestHandler(),
    )
    ..registerLazySingleton<MedicationRepository>(
      () => MedicationRepositoryImp(
        requestHandler: locator(),
        medicationClient: locator(),
      ),
    );
}
