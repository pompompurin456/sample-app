import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/api/api_client.dart';
import 'package:sample/api/entity/local/user.dart';
import 'package:sample/api/entity/local/user_detail.dart';

final userDetailRepositoryProvider = Provider<UserDetailRepository>(
    (ref) => UserDetailRepository(ref.watch(apiClientProvider)));

class UserDetailRepository {
  final ApiClient apiClient;

  const UserDetailRepository(this.apiClient);

  Future<List<UserDetail>> fetchUserDetail({required int id}) async {
    final response = await apiClient.getUserDetail(id);

    return response
        .map((e) => UserDetail(
              id: e.id,
              userId: e.userId,
              name: e.name,
              balance: e.balance,
            ))
        .toList();
  }
}
