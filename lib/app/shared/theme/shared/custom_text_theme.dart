import 'package:flutter/material.dart';

class CustomTextTheme extends TextTheme {
  const CustomTextTheme({
    required TextStyle subtitle,
    required TextStyle button,
    required TextStyle inputText,
    required TextStyle appBarTitle,
    required TextStyle appBarStepper,
    required TextStyle homeCard,
    required TextStyle homeName,
    required TextStyle cardNumber,
  }) : super(
          headlineMedium: homeName,
          headlineSmall: subtitle,
          titleMedium: appBarTitle,
          titleSmall: appBarStepper,
          bodyMedium: inputText,
          labelSmall: homeCard,
          labelMedium: cardNumber,
          labelLarge: button,
        );
}
