import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(const EnderApp());

class EnderApp extends StatelessWidget {
  const EnderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
