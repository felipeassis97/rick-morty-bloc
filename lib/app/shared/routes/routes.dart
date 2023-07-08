import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty/app/features/character/character_list_page.dart';
import 'package:rick_morty/app/features/character/presenter/bloc/character_controller.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(
        child: BlocProvider<CharacterController>(
          create: (_) => CharacterController(),
          child: const MyHomePage(),
        ),
      ),
    ),
  ],
);
