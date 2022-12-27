import 'package:flutter/material.dart';

class Armies extends StatelessWidget {
  const Armies({super.key});
  static const title = 'Armies';
  static const routeName = '/armies';
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
