import 'package:flutter/material.dart';

class ComponentColors extends ThemeExtension<ComponentColors> {
  final Color? primaryButtonActive;
  final Color? primaryButtonTextActive;
  final Color? primaryButtonDisable;

  final Color? secondaryButtonActive;
  final Color? secondaryButtonTextActive;
  final Color? secondaryButtonDisable;
  final Color? secondaryButtonBorderColor;

  final Color? inputTextActiveBorder;
  final Color? inputTextActiveBackground;
  final Color? inputTextActive;

  final Color? appBarStepperCollor;
  final Color? appBarStepperBackgroundCollor;

  final Color? tapBarBackgroundColor;
  final Color? tapBarLabelColor;
  final Color? tapBarUnselectedLabelColor;
  final Color? tapBarIndicatorColor;

  const ComponentColors({
    required this.primaryButtonActive,
    required this.primaryButtonTextActive,
    required this.primaryButtonDisable,
    required this.secondaryButtonActive,
    required this.secondaryButtonTextActive,
    required this.secondaryButtonDisable,
    required this.secondaryButtonBorderColor,
    required this.inputTextActiveBorder,
    required this.inputTextActiveBackground,
    required this.inputTextActive,
    required this.appBarStepperCollor,
    required this.appBarStepperBackgroundCollor,
    required this.tapBarBackgroundColor,
    required this.tapBarLabelColor,
    required this.tapBarUnselectedLabelColor,
    required this.tapBarIndicatorColor,
  });

  @override
  ThemeExtension<ComponentColors> copyWith() {
    return ComponentColors(
      primaryButtonActive: primaryButtonActive ?? primaryButtonActive,
      primaryButtonTextActive:
          primaryButtonTextActive ?? primaryButtonTextActive,
      primaryButtonDisable: primaryButtonDisable ?? primaryButtonDisable,
      secondaryButtonActive: secondaryButtonActive ?? secondaryButtonActive,
      secondaryButtonTextActive:
          secondaryButtonTextActive ?? secondaryButtonTextActive,
      secondaryButtonDisable: secondaryButtonDisable ?? secondaryButtonDisable,
      secondaryButtonBorderColor:
          secondaryButtonBorderColor ?? secondaryButtonBorderColor,
      inputTextActiveBorder: inputTextActiveBorder ?? inputTextActiveBorder,
      inputTextActiveBackground:
          inputTextActiveBackground ?? inputTextActiveBackground,
      inputTextActive: inputTextActive ?? inputTextActive,
      appBarStepperCollor: appBarStepperCollor ?? appBarStepperCollor,
      appBarStepperBackgroundCollor:
          appBarStepperBackgroundCollor ?? appBarStepperBackgroundCollor,
      tapBarBackgroundColor: tapBarBackgroundColor ?? tapBarBackgroundColor,
      tapBarLabelColor: tapBarLabelColor ?? tapBarLabelColor,
      tapBarUnselectedLabelColor:
          tapBarUnselectedLabelColor ?? tapBarUnselectedLabelColor,
      tapBarIndicatorColor: tapBarIndicatorColor ?? tapBarIndicatorColor,
    );
  }

  @override
  ThemeExtension<ComponentColors> lerp(
      covariant ThemeExtension<ComponentColors>? other, double t) {
    if (other is! ComponentColors) {
      return this;
    }
    return ComponentColors(
      primaryButtonActive:
          Color.lerp(primaryButtonActive, other.primaryButtonActive, t),
      primaryButtonDisable:
          Color.lerp(primaryButtonDisable, other.primaryButtonDisable, t),
      primaryButtonTextActive:
          Color.lerp(primaryButtonTextActive, other.primaryButtonTextActive, t),
      secondaryButtonActive:
          Color.lerp(secondaryButtonActive, other.secondaryButtonActive, t),
      secondaryButtonTextActive: Color.lerp(
          secondaryButtonTextActive, other.secondaryButtonTextActive, t),
      secondaryButtonDisable:
          Color.lerp(secondaryButtonDisable, other.secondaryButtonDisable, t),
      secondaryButtonBorderColor: Color.lerp(
          secondaryButtonBorderColor, other.secondaryButtonBorderColor, t),
      inputTextActiveBorder:
          Color.lerp(inputTextActiveBorder, other.inputTextActiveBorder, t),
      inputTextActiveBackground: Color.lerp(
          inputTextActiveBackground, other.inputTextActiveBackground, t),
      inputTextActive: Color.lerp(inputTextActive, other.inputTextActive, t),
      appBarStepperCollor:
          Color.lerp(appBarStepperCollor, other.appBarStepperCollor, t),
      appBarStepperBackgroundCollor: Color.lerp(appBarStepperBackgroundCollor,
          other.appBarStepperBackgroundCollor, t),
      tapBarBackgroundColor:
          Color.lerp(tapBarBackgroundColor, other.tapBarBackgroundColor, t),
      tapBarLabelColor: Color.lerp(tapBarLabelColor, other.tapBarLabelColor, t),
      tapBarUnselectedLabelColor: Color.lerp(
          tapBarUnselectedLabelColor, other.tapBarUnselectedLabelColor, t),
      tapBarIndicatorColor:
          Color.lerp(tapBarIndicatorColor, other.tapBarIndicatorColor, t),
    );
  }
}
