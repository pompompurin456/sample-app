import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/user/provider/user_provider.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userProvider);
    return userAsyncValue.when(
      data: (users) {
        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            final user = users[index];
            return Column(
              children: [
                Text(user.name),
              ],
            );
          },
        );
      },
      error: (error, stackTrace) {
        print('$error');
        return Text('$error');
      },
      loading: () => const Center(
        child: Text('ロード中'),
      ),
    );
  }
}
