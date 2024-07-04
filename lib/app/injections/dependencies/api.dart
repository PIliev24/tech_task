import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:tech_task/app/injections/locator.dart';
import 'package:tech_task/data/source/api/api_requests.dart';
import 'package:tech_task/data/source/api/interceptors/error_interceptor.dart';
import 'package:tech_task/data/source/api/medication/medication_client.dart';

void api() {
  locator
    ..registerLazySingleton(
      () => Dio(
        BaseOptions(
            receiveTimeout: const Duration(seconds: 30),
            sendTimeout: const Duration(seconds: 30),
            connectTimeout: const Duration(seconds: 30),
            // This usually will be elsewhere but for the purpose to keep it simple it's put like this here
            baseUrl:
                "https://34574e81-855b-4c10-8987-935950fdd23c.mock.pstmn.io/"),
      ),
    )
    ..registerLazySingleton(
      () => ApiRequests(
        dio: locator()
          ..interceptors.add(
            RetryInterceptor(
              dio: locator(),
              logPrint: log,
            ),
          )
          ..interceptors.add(
            ErrorInterceptor(),
          ),
      ),
    )
    ..registerLazySingleton(
      () => MedicationClient(
        requests: locator(),
      ),
    );
}
