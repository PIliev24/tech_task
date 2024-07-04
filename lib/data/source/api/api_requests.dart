import 'dart:convert';

import 'package:dio/dio.dart';

class ApiRequests {
  ApiRequests({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<Map<String, dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.get(
      url,
      queryParameters: queryParameters,
    );

    // Check if response.data is a string
    if (response.data is String) {
      return jsonDecode(response.data) as Map<String, dynamic>;
    }

    return response.data as Map<String, dynamic>;
  }

  Future<Iterable<Map<String, dynamic>>> getIterable(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.get(
      url,
      queryParameters: queryParameters,
    );

    return (jsonDecode(response.data) as List<dynamic>)
        .cast<Map<String, dynamic>>();
  }

  Future<T> post<T>(
    String url,
    Object body, {
    Options? options,
  }) async {
    final response = await _dio.post(
      url,
      data: body,
      options: options,
    );
    return response.data as T;
  }

  Future<T> put<T>(
    String url,
    Object body,
  ) async {
    final response = await _dio.put(
      url,
      data: body,
    );
    return response.data as T;
  }

  Future<Map<String, dynamic>> patch(
    String url,
    Object body,
  ) async {
    final response = await _dio.patch(
      url,
      data: body,
    );
    return response.data as Map<String, dynamic>;
  }

  Future<T> delete<T>(
    String url,
  ) async {
    final response = await _dio.delete(
      url,
    );
    return response.data as T;
  }
}
