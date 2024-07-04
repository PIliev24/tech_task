import 'package:tech_task/data/repository/handler/extensions.dart';
import 'package:tech_task/data/repository/medication/mappers/medication_mappers.dart';
import 'package:tech_task/domain/repositories/medication_repository.dart';

import '../../../domain/model/handler/data_response.dart';
import '../../../domain/model/medication/medication.dart';
import '../../source/api/medication/medication_client.dart';
import '../handler/request_handler.dart';

class MedicationRepositoryImp implements MedicationRepository {
  MedicationRepositoryImp({
    required MedicationClient medicationClient,
    required RequestHandler requestHandler,
  })  : _medicationClient = medicationClient,
        _requestHandler = requestHandler;

  final MedicationClient _medicationClient;
  final RequestHandler _requestHandler;

  @override
  Future<DataResponse<List<Medication>>> fetchMedication() async {
    final result = await _requestHandler.safeApiCall(
      () => _medicationClient.fetchMedication(),
    );

    return result.toDataResponse(
      (response) => response.toDomain(),
    );
  }
}
