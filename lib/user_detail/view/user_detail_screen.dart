import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/user_detail/provider/user_detail_provider.dart';

class UserDetailScreen extends HookConsumerWidget {
  const UserDetailScreen({
    Key? key,
    required this.userName,
    required this.userId,
  }) : super(key: key);

  final String userName;
  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDetailAsyncValue = ref.watch(userDetailProvider(userId));
    final sumBalance = ref.watch(sumBalanceProvider);

    return userDetailAsyncValue.when(
      data: (userDetails) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Detail'),
          ),
          body: Column(
            children: [
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('User:'),
                  Text(userName),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Total:'),
                  Text(sumBalance.toString()),
                ],
              ),
              const SizedBox(height: 48),
              const Divider(color: Colors.black),
              Expanded(
                child: ListView.builder(
                  itemCount: userDetails.length,
                  itemBuilder: (BuildContext context, int index) {
                    final userDetail = userDetails[index];
                    return Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: ListTile(
                        title: Text(userDetail.name),
                      ),
                    );
                  },
                ),
              ),
            ],
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
