// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationDataResponse _$MedicationDataResponseFromJson(
        Map<String, dynamic> json) =>
    MedicationDataResponse(
      id: json['_id'] as String?,
      remedyId: json['remedy_id'] as String?,
      patientId: json['patient_id'] as String?,
      dateCreated: (json['date_created'] as num?)?.toInt(),
      isOngoing: json['is_ongoing'] as bool?,
      startDate: (json['start_date'] as num?)?.toInt(),
      medicineId: json['medicine_id'] as String?,
      instruction: json['instruction'] as String?,
      medicineName: json['medicine_name'] as String?,
      medicineType: json['medicine_type'] as String?,
      endDate: (json['end_date'] as num?)?.toInt(),
      repeatCycle: (json['repeat_cycle'] as num?)?.toInt(),
      allowEdit: json['allow_edit'] as bool?,
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map((e) => ScheduleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      isCurrent: json['is_current'] as bool?,
      medicine: json['medicine'] == null
          ? null
          : MedicineResponse.fromJson(json['medicine'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toDouble(),
      reorderTimestamp: (json['reorder_timestamp'] as num?)?.toInt(),
      dateModified: (json['date_modified'] as num?)?.toInt(),
      specialInstruction: json['special_instruction'] as String?,
      canRequest: json['can_request'] as bool?,
    );

Map<String, dynamic> _$MedicationDataResponseToJson(
        MedicationDataResponse instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'remedy_id': instance.remedyId,
      'patient_id': instance.patientId,
      'date_created': instance.dateCreated,
      'is_ongoing': instance.isOngoing,
      'start_date': instance.startDate,
      'medicine_id': instance.medicineId,
      'instruction': instance.instruction,
      'medicine_name': instance.medicineName,
      'medicine_type': instance.medicineType,
      'end_date': instance.endDate,
      'repeat_cycle': instance.repeatCycle,
      'allow_edit': instance.allowEdit,
      'schedule': instance.schedule,
      'is_current': instance.isCurrent,
      'medicine': instance.medicine,
      'price': instance.price,
      'reorder_timestamp': instance.reorderTimestamp,
      'date_modified': instance.dateModified,
      'special_instruction': instance.specialInstruction,
      'can_request': instance.canRequest,
    };
