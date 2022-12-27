import 'package:flutter/material.dart';

class Characters_s extends StatelessWidget {
  const Characters_s({super.key});
  static const title = 'Characters';
  static const routeName = '/characters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        centerTitle: true,
      ),
    );
  }
}
