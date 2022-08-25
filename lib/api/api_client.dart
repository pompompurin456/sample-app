import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:sample/api/app_dio.dart';

import 'entity/remote/user_response.dart';

part 'api_client.g.dart';

final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient(ref.watch(appDioProvider)),
);

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/users')
  Future<List<UserResponse>> getUser();
}
