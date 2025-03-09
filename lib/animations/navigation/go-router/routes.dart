import 'package:flutter_revision/animations/navigation/go-router/administration/user-list-page.dart';
import 'package:flutter_revision/animations/navigation/go-router/home-page.dart';
import 'package:flutter_revision/animations/navigation/go-router/marketing/product-list-page.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: "/sells",
    builder: (context, state) => const ProductListPage(),
    routes: [
      GoRoute(
        path: "products-list",
        builder: (context, state) => const ProductListPage(),
      ),
    ],
  ),
  GoRoute(
      path: "/administration",
      builder: (context, state) => const UsersListPage(),
      routes: [
        GoRoute(
            path: "users-list",
            builder: (context, state) => const UsersListPage())
      ])
]);
