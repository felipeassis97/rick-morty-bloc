import 'package:flutter/material.dart';
import 'package:rick_morty/app/shared/theme/light/light_generic_colors.dart';
import 'package:rick_morty/app/shared/theme/shared/component_colors.dart';
import 'package:rick_morty/app/shared/theme/shared/custom_text_theme.dart';

import 'dark_generic_colors.dart';

class DarkTheme {
  static get themeData => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: _textTheme,
        extensions: const [_colors],
      );

  static const _textTheme = CustomTextTheme(
    appBarTitle: TextStyle(
      fontSize: 14,
      color: LightGenericColors.grey,
    ),
    appBarStepper: TextStyle(
      fontSize: 14,
      color: LightGenericColors.grey,
    ),
    subtitle: TextStyle(
      color: Colors.white,
    ),
    button: TextStyle(
      fontFamily: 'Satoshi bold',
      fontSize: 20,
      wordSpacing: 5.9,
      fontWeight: FontWeight.bold,
    ),
    inputText: TextStyle(
      color: DarkGenericColors.grey,
      fontWeight: FontWeight.bold,
    ),
    homeCard: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20,
      color: Color(0xFF240C64),
    ),
    homeName: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 15,
      color: Color(0xFF240C64),
    ),
    cardNumber: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 15,
      color: Color(0xFF240C64),
    ),
  );

  static const _colors = ComponentColors(
    primaryButtonActive: Color(0xFFEEEEEE),
    primaryButtonTextActive: Color(0xFF95D8D8),
    primaryButtonDisable: Color(0xFFEEEEEE),
    secondaryButtonActive: Color(0xFFEEEEEE),
    secondaryButtonTextActive: Color(0xFF233863),
    secondaryButtonDisable: Color(0xFFEEEEEE),
    secondaryButtonBorderColor: Color(0xFFEEEEEE),
    inputTextActiveBorder: DarkGenericColors.aqua,
    inputTextActiveBackground: DarkGenericColors.lightGrey,
    inputTextActive: DarkGenericColors.grey,
    appBarStepperBackgroundCollor: DarkGenericColors.grey,
    appBarStepperCollor: DarkGenericColors.aqua,
    tapBarBackgroundColor: LightGenericColors.white,
    tapBarLabelColor: Color(0xFF240C64),
    tapBarUnselectedLabelColor: Color(0xFF707070),
    tapBarIndicatorColor: LightGenericColors.aqua,
  );
}
