// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) =>
    ScheduleResponse(
      dayIterator: (json['day_iterator'] as num?)?.toInt(),
      alarmWindow: (json['alarm_window'] as num?)?.toInt(),
      dayOffset: (json['day_offset'] as num?)?.toInt(),
      doseMin: (json['dose_min'] as num?)?.toInt(),
      doseMax: (json['dose_max'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ScheduleResponseToJson(ScheduleResponse instance) =>
    <String, dynamic>{
      'day_iterator': instance.dayIterator,
      'alarm_window': instance.alarmWindow,
      'day_offset': instance.dayOffset,
      'dose_min': instance.doseMin,
      'dose_max': instance.doseMax,
    };
