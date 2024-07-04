import 'package:json_annotation/json_annotation.dart';

import 'medication_data_response.dart';

part 'medication_response.g.dart';

@JsonSerializable()
class MedicationResponse {
  MedicationResponse({
    required this.data,
  });

  factory MedicationResponse.fromJson(Map<String, dynamic> json) =>
      _$MedicationResponseFromJson(json);

  final List<MedicationDataResponse>? data;

  Map<String, dynamic> toJson() => _$MedicationResponseToJson(this);
}
