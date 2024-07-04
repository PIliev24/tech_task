import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:tech_task/domain/model/handler/data_response.dart';
import 'package:tech_task/domain/model/medication/medication.dart';
import 'package:tech_task/domain/repositories/medication_repository.dart';

class MedicationService extends ChangeNotifier {
  MedicationService({required MedicationRepository medicationRepository})
      : _medicationRepository = medicationRepository;

  final MedicationRepository _medicationRepository;

  Stream<DataResponse<List<Medication>>> get medications =>
      _medicationController.stream;
  DataResponse<List<Medication>> _finalEventsResponse = DataResponse();

  final _medicationController =
      StreamController<DataResponse<List<Medication>>>.broadcast();

  Future<void> fetchData() async {
    final medicationsData = await _medicationRepository.fetchMedication();
    _finalEventsResponse = DataResponse(
      data: medicationsData.data,
      error: medicationsData.error,
    );

    _medicationController.add(_finalEventsResponse);
  }
}
