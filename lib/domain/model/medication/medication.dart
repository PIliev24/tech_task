import 'medicine.dart';
import 'schedule.dart';

class Medication {
  Medication({
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

  final String id;
  final String remedyId;
  final String patientId;
  final DateTime dateCreated;
  final bool? isOngoing;
  final DateTime startDate;
  final String medicineId;
  final String instruction;
  final String medicineName;
  final String medicineType;
  final DateTime endDate;
  final int repeatCycle;
  final bool allowEdit;
  final List<Schedule> schedule;
  final bool isCurrent;
  final Medicine medicine;
  final double price;
  final DateTime? reorderTimestamp;
  final DateTime? dateModified;
  final String? specialInstruction;
  final bool? canRequest;
}
