import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/user/provider/user_provider.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userProvider);
    return userAsyncValue.when(
      data: (users) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('User'),
          ),
          body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              final user = users[index];
              final userName = user.name;
              final userId = user.userId;
              return Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
                child: ListTile(
                  title: Text(user.name),
                  onTap: () =>
                      GoRouter.of(context).push('/detail/$userName/$userId'),
                ),
              );
            },
          ),
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
