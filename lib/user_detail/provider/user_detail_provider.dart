import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/api/entity/local/user_detail.dart';
import 'package:sample/user_detail/repository/user_detail_repository.dart';

final userDetailProvider =
    FutureProvider.family<List<UserDetail>, int>((ref, userId) async {
  return await ref
      .read(userDetailRepositoryProvider)
      .fetchUserDetail(id: userId);
});
