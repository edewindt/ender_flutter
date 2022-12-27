import 'package:ender_app/screens/armies.dart';
import 'package:ender_app/screens/characters.dart';
import 'package:ender_app/screens/species.dart';
import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(const EnderApp());

class EnderApp extends StatelessWidget {
  const EnderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        Armies.routeName: (context) => Armies(),
        Species.routeName: (context) => Species(),
        Characters_s.routeName: (context) => Characters_s()
      },
    );
  }
}
