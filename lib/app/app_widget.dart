import 'package:flutter/material.dart';
import 'package:rick_morty/app/shared/routes/routes.dart';
import 'package:rick_morty/app/shared/theme/dark/dark_theme.dart';

import 'shared/theme/light/light_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      theme: LightTheme.themeData,
      darkTheme: DarkTheme.themeData,
      themeMode: ThemeMode.light,
      routerConfig: routes,
    );
  }
}
