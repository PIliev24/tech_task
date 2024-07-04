import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_task/domain/model/medication/medication.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Medication> medications,
  }) = _HomeState;
}
