import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/user_detail/provider/user_detail_provider.dart';

class UserDetailScreen extends ConsumerWidget {
  const UserDetailScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDetailAsyncValue = ref.watch(userDetailProvider(userId));

    return userDetailAsyncValue.when(
      data: (userDetail) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Detail'),
          ),
          body: Text(userDetail.first.name),
        );
      },
      error: (error, stackTrace) {
        return Text('$error');
      },
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
