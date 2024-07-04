import 'package:tech_task/app/injections/locator.dart';
import 'package:tech_task/domain/services/medication_service.dart';

void service() {
  locator.registerLazySingleton(
    () => MedicationService(
      medicationRepository: locator(),
    ),
  );
}
