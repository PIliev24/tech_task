import 'package:tech_task/data/source/model/medication/medication_data_response.dart';
import 'package:tech_task/data/source/model/medication/medication_response.dart';
import 'package:tech_task/data/source/model/medication/medicine_response.dart';
import 'package:tech_task/data/source/model/medication/schedule_response.dart';
import 'package:tech_task/domain/model/medication/medication.dart';
import 'package:tech_task/domain/model/medication/medicine.dart';
import 'package:tech_task/domain/model/medication/schedule.dart';

extension MedicationResponseMapper on MedicationResponse {
  List<Medication> toDomain() {
    return data
            ?.map((medicationDataResponse) => medicationDataResponse.toDomain())
            .toList() ??
        [];
  }
}

extension MedicationDataResponseMapper on MedicationDataResponse {
  Medication toDomain() {
    return Medication(
      id: id ?? '',
      remedyId: remedyId ?? '',
      patientId: patientId ?? '',
      dateCreated: dateCreated != null
          ? DateTime.fromMillisecondsSinceEpoch(dateCreated! * 1000)
          : DateTime.now(),
      isOngoing: isOngoing,
      startDate: startDate != null
          ? DateTime.fromMillisecondsSinceEpoch(startDate! * 1000)
          : DateTime.now(),
      medicineId: medicineId ?? '',
      instruction: instruction ?? '',
      medicineName: medicineName ?? '',
      medicineType: medicineType ?? '',
      endDate: endDate != null
          ? DateTime.fromMillisecondsSinceEpoch(endDate! * 1000)
          : DateTime.now(),
      repeatCycle: repeatCycle ?? 0,
      allowEdit: allowEdit ?? false,
      schedule: schedule?.map((s) => s.toDomain()).toList() ?? [],
      isCurrent: isCurrent ?? false,
      medicine: medicine?.toDomain() ??
          Medicine(
            id: '',
            amppId: '',
            amppName: '',
            ampId: '',
            vmppId: '',
            discontinuedDate: null,
            pipCode: null,
            prescriptionCharges: 0,
            nhsPrice: 0,
            nhsPriceDate: DateTime.now(),
            gtin: [],
            startDate: DateTime.now(),
            medicineName: '',
            genericName: '',
            courseQuantity: 0,
            medicineId: '',
            name: '',
            controlled: false,
          ),
      price: price ?? 0.0,
      reorderTimestamp: reorderTimestamp != null
          ? DateTime.fromMillisecondsSinceEpoch(reorderTimestamp! * 1000)
          : null,
      dateModified: dateModified != null
          ? DateTime.fromMillisecondsSinceEpoch(dateModified! * 1000)
          : null,
      specialInstruction: specialInstruction,
      canRequest: canRequest,
    );
  }
}

extension ScheduleResponseMapper on ScheduleResponse {
  Schedule toDomain() {
    return Schedule(
      dayIterator: dayIterator ?? 0,
      alarmWindow: alarmWindow ?? 0,
      dayOffset: dayOffset,
      doseMin: doseMin ?? 0,
      doseMax: doseMax ?? 0,
    );
  }
}

extension MedicineResponseMapper on MedicineResponse {
  Medicine toDomain() {
    return Medicine(
      id: id ?? '',
      amppId: amppId ?? '',
      amppName: amppName ?? '',
      ampId: ampId ?? '',
      vmppId: vmppId ?? '',
      discontinuedDate:
          discontinuedDate != null ? DateTime.parse(discontinuedDate!) : null,
      pipCode: pipCode,
      prescriptionCharges: prescriptionCharges ?? 0,
      nhsPrice: nhsPrice ?? 0,
      nhsPriceDate:
          nhsPriceDate != null ? DateTime.parse(nhsPriceDate!) : DateTime.now(),
      gtin: gtin ?? [],
      startDate:
          startDate != null ? DateTime.parse(startDate!) : DateTime.now(),
      medicineName: medicineName ?? '',
      genericName: genericName ?? '',
      courseQuantity: courseQuantity ?? 0,
      medicineId: medicineId ?? '',
      name: name ?? '',
      controlled: controlled ?? false,
    );
  }
}
