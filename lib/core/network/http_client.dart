import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

extension HttpClient on Dio {
  Dio init(String baseUrl) {
    options.baseUrl = baseUrl;
    options.connectTimeout = const Duration(seconds: 30);
    options.receiveTimeout = const Duration(seconds: 30);
    options.sendTimeout = const Duration(seconds: 1800);

    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }
    return this;
  }
}
