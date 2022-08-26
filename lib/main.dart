import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample/User/view/user_screen.dart';
import 'package:sample/user_detail/view/user_detail_screen.dart';

void main() {
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const UserScreen();
        },
      ),
      GoRoute(
        path: '/detail/:user_name/:user_id',
        builder: (BuildContext context, GoRouterState state) {
          final userName = state.params['user_name'];
          final userId = (state.params['user_id']);

          return UserDetailScreen(
            userName: userName!,
            userId: int.parse(userId!),
          );
        },
      ),
    ],
  );
}
