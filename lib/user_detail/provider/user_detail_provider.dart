import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/api/entity/local/user_detail.dart';
import 'package:sample/user_detail/repository/user_detail_repository.dart';

final sumBalanceProvider = StateProvider<int>((ref) => 0);

final userDetailProvider =
    FutureProvider.family<List<UserDetail>, int>((ref, userId) async {
  final result =
      await ref.watch(userDetailRepositoryProvider).fetchUserDetail(id: userId);

  ref.read(sumBalanceProvider.notifier).state = result
      .map((e) => e.balance)
      .toList()
      .reduce((value, element) => value + element);;

  return result;
});
