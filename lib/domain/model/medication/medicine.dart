class Medicine {
  Medicine({
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

  final String id;
  final String amppId;
  final String amppName;
  final String ampId;
  final String vmppId;
  final DateTime? discontinuedDate;
  final String? pipCode;
  final int prescriptionCharges;
  final int nhsPrice;
  final DateTime nhsPriceDate;
  final List<String> gtin;
  final DateTime startDate;
  final String medicineName;
  final String genericName;
  final int courseQuantity;
  final String medicineId;
  final String name;
  final bool controlled;
}
