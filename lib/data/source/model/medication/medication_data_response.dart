import 'package:json_annotation/json_annotation.dart';
import 'medicine_response.dart';
import 'schedule_response.dart';

part 'medication_data_response.g.dart';

@JsonSerializable()
class MedicationDataResponse {
  MedicationDataResponse({
    required this.id,
    required this.remedyId,
    required this.patientId,
    required this.dateCreated,
    required this.isOngoing,
    required this.startDate,
    required this.medicineId,
    required this.instruction,
    required this.medicineName,
    required this.medicineType,
    required this.endDate,
    required this.repeatCycle,
    required this.allowEdit,
    required this.schedule,
    required this.isCurrent,
    required this.medicine,
    required this.price,
    this.reorderTimestamp,
    this.dateModified,
    this.specialInstruction,
    this.canRequest,
  });

  factory MedicationDataResponse.fromJson(Map<String, dynamic> json) =>
      _$MedicationDataResponseFromJson(json);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'remedy_id')
  final String? remedyId;
  @JsonKey(name: 'patient_id')
  final String? patientId;
  @JsonKey(name: 'date_created')
  final int? dateCreated;
  @JsonKey(name: 'is_ongoing')
  final bool? isOngoing;
  @JsonKey(name: 'start_date')
  final int? startDate;
  @JsonKey(name: 'medicine_id')
  final String? medicineId;
  final String? instruction;
  @JsonKey(name: 'medicine_name')
  final String? medicineName;
  @JsonKey(name: 'medicine_type')
  final String? medicineType;
  @JsonKey(name: 'end_date')
  final int? endDate;
  @JsonKey(name: 'repeat_cycle')
  final int? repeatCycle;
  @JsonKey(name: 'allow_edit')
  final bool? allowEdit;
  final List<ScheduleResponse>? schedule;
  @JsonKey(name: 'is_current')
  final bool? isCurrent;
  final MedicineResponse? medicine;
  final double? price;
  @JsonKey(name: 'reorder_timestamp')
  final int? reorderTimestamp;
  @JsonKey(name: 'date_modified')
  final int? dateModified;
  @JsonKey(name: 'special_instruction')
  final String? specialInstruction;
  @JsonKey(name: 'can_request')
  final bool? canRequest;

  Map<String, dynamic> toJson() => _$MedicationDataResponseToJson(this);
}
