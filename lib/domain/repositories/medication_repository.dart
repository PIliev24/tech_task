import '../model/handler/data_response.dart';
import '../model/medication/medication.dart';

abstract interface class MedicationRepository {
  Future<DataResponse<List<Medication>>> fetchMedication();
}
