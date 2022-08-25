import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/user/provider/user_provider.dart';
import 'package:sample/user_detail/view/user_detail_screen.dart';

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
              return Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
                child: ListTile(
                  title: Text(user.name),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserDetailScreen()),
                  ),
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
