import 'package:json_annotation/json_annotation.dart';

part 'medicine_response.g.dart';

@JsonSerializable()
class MedicineResponse {
  MedicineResponse({
    required this.id,
    required this.amppId,
    required this.amppName,
    required this.ampId,
    required this.vmppId,
    this.discontinuedDate,
    this.pipCode,
    required this.prescriptionCharges,
    required this.nhsPrice,
    required this.nhsPriceDate,
    required this.gtin,
    required this.startDate,
    required this.medicineName,
    required this.genericName,
    required this.courseQuantity,
    required this.medicineId,
    required this.name,
    required this.controlled,
  });

  factory MedicineResponse.fromJson(Map<String, dynamic> json) =>
      _$MedicineResponseFromJson(json);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'ampp_id')
  final String? amppId;
  @JsonKey(name: 'ampp_name')
  final String? amppName;
  @JsonKey(name: 'amp_id')
  final String? ampId;
  @JsonKey(name: 'vmpp_id')
  final String? vmppId;
  @JsonKey(name: 'discontinued_date')
  final String? discontinuedDate;
  @JsonKey(name: 'pip_code')
  final String? pipCode;
  @JsonKey(name: 'prescription_charges')
  final int? prescriptionCharges;
  @JsonKey(name: 'nhs_price')
  final int? nhsPrice;
  @JsonKey(name: 'nhs_price_date')
  final String? nhsPriceDate;
  final List<String>? gtin;
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'medicine_name')
  final String? medicineName;
  @JsonKey(name: 'generic_name')
  final String? genericName;
  @JsonKey(name: 'course_quantity')
  final int? courseQuantity;
  @JsonKey(name: 'medicine_id')
  final String? medicineId;
  final String? name;
  final bool? controlled;

  Map<String, dynamic> toJson() => _$MedicineResponseToJson(this);
}
