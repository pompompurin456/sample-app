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
              _ListHeader(
                mainTitle: 'User:',
                subTitle: userName,
              ),
              const SizedBox(height: 16),
              _ListHeader(
                mainTitle: 'Total:',
                subTitle: '$sumBalance円',
              ),
              const SizedBox(height: 48),
              const Divider(color: Colors.black),
              Expanded(
                child: ListView.builder(
                  itemCount: userDetails.length,
                  itemBuilder: (BuildContext context, int index) {
                    final userDetail = userDetails[index];
                    final balance = userDetail.balance;
                    return Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(userDetail.name),
                            Text('$balance円'),
                          ],
                        ),
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

class _ListHeader extends StatelessWidget {
  const _ListHeader({
    Key? key,
    required this.mainTitle,
    required this.subTitle,
  }) : super(key: key);

  final String mainTitle;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(mainTitle),
          Text(subTitle),
        ],
      ),
    );
  }
}
