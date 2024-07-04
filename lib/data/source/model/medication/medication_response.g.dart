// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationResponse _$MedicationResponseFromJson(Map<String, dynamic> json) =>
    MedicationResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => MedicationDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MedicationResponseToJson(MedicationResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
