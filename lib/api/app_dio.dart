import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';

final appDioProvider = Provider<AppDio>((_) => AppDio());

class AppDio with DioMixin implements Dio {
  AppDio() {
    options = BaseOptions(
      baseUrl: "https://mfx-recruit-dev.herokuapp.com",
    );

    interceptors.addAll([
      if (kDebugMode)
        LoggyDioInterceptor(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ),
    ]);

    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
