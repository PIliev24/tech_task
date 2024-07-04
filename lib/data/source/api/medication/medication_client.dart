import 'package:tech_task/data/source/model/medication/medication_response.dart';

import '../api_requests.dart';

class MedicationClient {
  MedicationClient({
    required ApiRequests requests,
  }) : _requests = requests;

  final ApiRequests _requests;

  Future<MedicationResponse> fetchMedication() async {
    final data = await _requests.get(
      '/remedies',
    );

    return MedicationResponse.fromJson(
      data,
    );
  }
}
