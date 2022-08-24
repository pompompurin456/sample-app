import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:sample/api/app_dio.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(AppDio dio) = _ApiClient;
}
