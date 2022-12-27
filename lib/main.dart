import 'package:ender_app/screens/armies.dart';
import 'package:ender_app/screens/characters.dart';
import 'package:ender_app/screens/species.dart';
import 'package:ender_app/screens/tabs_s.dart';
import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(const EnderApp());

class EnderApp extends StatelessWidget {
  const EnderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs_s(),
    );
  }
}
