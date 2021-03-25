import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_ui_kit/config/themes.dart';
import 'package:insta_ui_kit/screens/sign_up/main_sign_in_screen.dart';
import 'package:provider/provider.dart';
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return ChangeNotifierProvider<ThemeChanger>(
      create: (context) => ThemeChanger(lightTheme),
      child: MainMaterialApp(),
    );
  }
}

class MainMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'Insta UI Kit',
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: MainSignInScreen(),
    );
  }
}
