import 'package:flutter/material.dart';

class Species extends StatelessWidget {
  const Species({super.key});
  static const title = 'Species';
  static const routeName = '/species';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
    );
  }
}
