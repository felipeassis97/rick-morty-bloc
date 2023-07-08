import 'package:flutter/material.dart';
import 'package:rick_morty/app/shared/theme/light/light_generic_colors.dart';
import 'package:rick_morty/app/shared/theme/shared/component_colors.dart';
import 'package:rick_morty/app/shared/theme/shared/custom_text_theme.dart';

class LightTheme {
  static get themeData => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
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
      fontSize: 14,
      color: LightGenericColors.darkDenim,
    ),
    button: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20,
      letterSpacing: 0.03,
      fontWeight: FontWeight.w600,
    ),
    inputText: TextStyle(
      color: LightGenericColors.grey,
    ),
    homeCard: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 15,
      letterSpacing: 0.03,
      color: Color(0xFF240C64),
    ),
    homeName: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 15,
      color: Color(0xFF240C64),
    ),
    cardNumber: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 16,
      color: Color(0xFF2C3547),
    ),
  );

  static const _colors = ComponentColors(
    primaryButtonActive: LightGenericColors.blue,
    primaryButtonTextActive: LightGenericColors.aqua,
    primaryButtonDisable: LightGenericColors.lightGrey,
    secondaryButtonActive: LightGenericColors.white,
    secondaryButtonTextActive: LightGenericColors.blue,
    secondaryButtonDisable: LightGenericColors.lightGrey,
    secondaryButtonBorderColor: LightGenericColors.aqua,
    inputTextActiveBorder: LightGenericColors.aqua,
    inputTextActiveBackground: LightGenericColors.white,
    inputTextActive: LightGenericColors.grey,
    appBarStepperBackgroundCollor: LightGenericColors.lightGrey,
    appBarStepperCollor: LightGenericColors.aqua,
    tapBarBackgroundColor: Colors.transparent,
    tapBarLabelColor: Color(0xFF240C64),
    tapBarUnselectedLabelColor: Color(0xFF707070),
    tapBarIndicatorColor: LightGenericColors.aqua,
  );
}
