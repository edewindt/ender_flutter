import 'package:ender_app/screens/armies.dart';
import 'package:ender_app/screens/characters.dart';
import 'package:ender_app/screens/species.dart';
import 'package:ender_app/screens/tabs_s.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const EnderApp());

class EnderApp extends StatelessWidget {
  const EnderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.hippieBlue),
      /* dark theme settings */
      themeMode: ThemeMode.dark,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      home: Tabs_s(),
    );
  }
}
