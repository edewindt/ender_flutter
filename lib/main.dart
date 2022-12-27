import 'package:flutter/material.dart';

void main() => runApp(const EnderApp());

class EnderApp extends StatelessWidget {
  const EnderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello World')),
      ),
    );
  }
}
