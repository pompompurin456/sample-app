import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

final appDioProvider = Provider<AppDio>((_) => AppDio());

class AppDio with DioMixin implements Dio {
  AppDio() {
    options = BaseOptions(
      baseUrl: "https://mfx-recruit-dev.herokuapp.com",
    );

    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
