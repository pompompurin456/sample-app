import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/api/entity/local/user.dart';
import '../repository/user_repository.dart';

final userProvider = FutureProvider<List<User>>((ref) async {
  return await ref.read(userRepositoryProvider).fetchUsers();
});
