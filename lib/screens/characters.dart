import 'package:flutter/material.dart';

class Characters extends StatelessWidget {
  const Characters({super.key});
  static const title = 'Characters';
  static const routeName = '/characters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
    );
  }
}
