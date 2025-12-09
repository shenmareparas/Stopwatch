import 'package:flutter/material.dart';

class NeumorphicTheme extends ThemeExtension<NeumorphicTheme> {
  final Color backgroundColor;
  final Color shadowColor;
  final Color lightShadowColor;
  final Color textColor;
  final Color seekBarLightColor;
  final Color seekBarDarkColor;

  const NeumorphicTheme({
    required this.backgroundColor,
    required this.shadowColor,
    required this.lightShadowColor,
    required this.textColor,
    required this.seekBarLightColor,
    required this.seekBarDarkColor,
  });

  static const light = NeumorphicTheme(
    backgroundColor: Color(0xFFF1F2F6),
    shadowColor: Color(0xFFDADFF0),
    lightShadowColor: Colors.white,
    textColor: Color(0xFF707070),
    seekBarLightColor: Color(0xFFB8ECED),
    seekBarDarkColor: Color(0xFF37C8DF),
  );

  static const dark = NeumorphicTheme(
    backgroundColor: Color(0xFF2E2E2E),
    shadowColor: Color(0xFF1E1E1E),
    lightShadowColor: Color(0xFF3E3E3E),
    textColor: Color(0xFFE0E0E0),
    seekBarLightColor: Color(0xFF37C8DF),
    seekBarDarkColor: Color(0xFFB8ECED),
  );

  @override
  ThemeExtension<NeumorphicTheme> copyWith({
    Color? backgroundColor,
    Color? shadowColor,
    Color? lightShadowColor,
    Color? textColor,
    Color? seekBarLightColor,
    Color? seekBarDarkColor,
  }) {
    return NeumorphicTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shadowColor: shadowColor ?? this.shadowColor,
      lightShadowColor: lightShadowColor ?? this.lightShadowColor,
      textColor: textColor ?? this.textColor,
      seekBarLightColor: seekBarLightColor ?? this.seekBarLightColor,
      seekBarDarkColor: seekBarDarkColor ?? this.seekBarDarkColor,
    );
  }

  @override
  ThemeExtension<NeumorphicTheme> lerp(
    covariant ThemeExtension<NeumorphicTheme>? other,
    double t,
  ) {
    if (other is! NeumorphicTheme) {
      return this;
    }
    return NeumorphicTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
      lightShadowColor: Color.lerp(
        lightShadowColor,
        other.lightShadowColor,
        t,
      )!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      seekBarLightColor: Color.lerp(
        seekBarLightColor,
        other.seekBarLightColor,
        t,
      )!,
      seekBarDarkColor: Color.lerp(
        seekBarDarkColor,
        other.seekBarDarkColor,
        t,
      )!,
    );
  }
}
