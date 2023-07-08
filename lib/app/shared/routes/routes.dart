import 'package:go_router/go_router.dart';
import 'package:rick_morty/app/features/character/character_list_page.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(),
    ),
  ],
);
