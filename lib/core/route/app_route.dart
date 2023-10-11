import 'package:flutter_upload_file/core/route/app_route_name.dart';
import 'package:flutter_upload_file/feature/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  AppRoute._();

  static final GoRouter router = GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(
        name: AppRouteName.home,
        path: "/home",
        builder: (context, state) {
          return const HomePage();
        },
      )
    ],
  );
}
