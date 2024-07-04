import 'package:tech_task/domain/services/medication_service.dart';
import 'package:tech_task/presentation/utils/state_viewmodel.dart';

import 'home_action.dart';
import 'home_event.dart';
import 'home_state.dart';

final class HomeViewModel
    extends StateViewModel<HomeState, HomeAction, HomeEvent> {
  HomeViewModel({
    required MedicationService medicationService,
  })  : _medicationService = medicationService,
        super(
          initialState: const HomeState(medications: []),
        );

  final MedicationService _medicationService;

  @override
  Future<void> init() async {
    _medicationService.medications.listen((data) {
      final medicationsData = data.data;
      if (medicationsData != null && medicationsData.isNotEmpty) {
        updateState(
          state.copyWith(
            medications: medicationsData,
          ),
        );
        success();
      }

      if (data.error != null) {
        failure();
      }
    });

    await _refresh();
  }

  Future<void> _refresh() async {
    await _medicationService.fetchData();
  }
}
