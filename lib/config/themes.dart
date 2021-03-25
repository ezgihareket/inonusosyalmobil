import 'package:flutter/material.dart';
import 'package:insta_ui_kit/config/colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: kColorPrimary,
  primaryColorBrightness: Brightness.light,
  canvasColor: kDarkWhite,
  accentColor: Color(0xff457BE0),
  accentColorBrightness: Brightness.light,
  scaffoldBackgroundColor: kDarkWhite,
  bottomAppBarColor: Color(0xff6D42CE),
  cardColor: Color(0xaaF5E0C3),
  dividerColor: Color(0x1f6D42CE),
  focusColor: Color(0x1aF5E0C3),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Color(0xff5D4524),
  primaryColorBrightness: Brightness.dark,
  primaryColorLight: Color(0x1a311f06),
  primaryColorDark: Color(0xff936F3E),
  canvasColor: kDarkWhite,
  accentColor: Color(0xff457BE0),
  accentColorBrightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xffB5BFD3),
  bottomAppBarColor: Color(0xff6D42CE),
  cardColor: Color(0xaa311F06),
  dividerColor: Color(0x1f6d42ce),
  focusColor: Color(0x1a311f06),
);
