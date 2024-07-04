import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:tech_task/data/source/api/exceptions/bad_request_exception.dart';
import 'package:tech_task/data/source/api/exceptions/connection_expection.dart';

import '../exceptions/other_exception.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (_isConnectionError(err)) {
      log('Connection error');
      return handler.next(
        ConnectionException(
          error: err,
        ),
      );
    }

    log('Dio error: ${err.response?.statusCode}');
    return handler.next(
      switch (err.response?.statusCode) {
        400 => BadRequestException(
            error: err,
          ),
        _ => OtherException(
            error: err,
          )
      },
    );
  }

  bool _isConnectionError(DioException error) {
    return error.error is SocketException ||
        error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout;
  }
}
