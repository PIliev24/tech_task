// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicineResponse _$MedicineResponseFromJson(Map<String, dynamic> json) =>
    MedicineResponse(
      id: json['_id'] as String?,
      amppId: json['ampp_id'] as String?,
      amppName: json['ampp_name'] as String?,
      ampId: json['amp_id'] as String?,
      vmppId: json['vmpp_id'] as String?,
      discontinuedDate: json['discontinued_date'] as String?,
      pipCode: json['pip_code'] as String?,
      prescriptionCharges: (json['prescription_charges'] as num?)?.toInt(),
      nhsPrice: (json['nhs_price'] as num?)?.toInt(),
      nhsPriceDate: json['nhs_price_date'] as String?,
      gtin: (json['gtin'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startDate: json['start_date'] as String?,
      medicineName: json['medicine_name'] as String?,
      genericName: json['generic_name'] as String?,
      courseQuantity: (json['course_quantity'] as num?)?.toInt(),
      medicineId: json['medicine_id'] as String?,
      name: json['name'] as String?,
      controlled: json['controlled'] as bool?,
    );

Map<String, dynamic> _$MedicineResponseToJson(MedicineResponse instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'ampp_id': instance.amppId,
      'ampp_name': instance.amppName,
      'amp_id': instance.ampId,
      'vmpp_id': instance.vmppId,
      'discontinued_date': instance.discontinuedDate,
      'pip_code': instance.pipCode,
      'prescription_charges': instance.prescriptionCharges,
      'nhs_price': instance.nhsPrice,
      'nhs_price_date': instance.nhsPriceDate,
      'gtin': instance.gtin,
      'start_date': instance.startDate,
      'medicine_name': instance.medicineName,
      'generic_name': instance.genericName,
      'course_quantity': instance.courseQuantity,
      'medicine_id': instance.medicineId,
      'name': instance.name,
      'controlled': instance.controlled,
    };
