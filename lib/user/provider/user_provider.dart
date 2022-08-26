import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/api/entity/local/user.dart';
import 'package:sample/user/repository/user_repository.dart';

final userProvider = FutureProvider.autoDispose<List<User>>((ref) async {
  return await ref.watch(userRepositoryProvider).fetchUsers();
});
