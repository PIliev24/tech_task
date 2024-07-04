import 'package:json_annotation/json_annotation.dart';

part 'schedule_response.g.dart';

@JsonSerializable()
class ScheduleResponse {
  ScheduleResponse({
    required this.dayIterator,
    required this.alarmWindow,
    this.dayOffset,
    required this.doseMin,
    required this.doseMax,
  });

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);

  @JsonKey(name: 'day_iterator')
  final int? dayIterator;
  @JsonKey(name: 'alarm_window')
  final int? alarmWindow;
  @JsonKey(name: 'day_offset')
  final int? dayOffset;
  @JsonKey(name: 'dose_min')
  final int? doseMin;
  @JsonKey(name: 'dose_max')
  final int? doseMax;

  Map<String, dynamic> toJson() => _$ScheduleResponseToJson(this);
}
