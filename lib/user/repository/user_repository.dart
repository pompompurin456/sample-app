import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/api/api_client.dart';
import 'package:sample/api/entity/local/user.dart';

final userRepositoryProvider = Provider<UserRepository>(
    (ref) => UserRepository(ref.watch(apiClientProvider)));

class UserRepository {
  final ApiClient apiClient;

  const UserRepository(this.apiClient);

  Future<List<User>> fetchUsers() async {
    final response = await apiClient.getUsers();

    return response.map((e) => User(userId: e.id, name: e.name)).toList();
  }
}
