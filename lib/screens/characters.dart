import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class Characters_s extends StatelessWidget {
  const Characters_s({super.key});
  static const title = 'Characters';
  static const routeName = '/characters';
  @override
  Widget build(BuildContext context) {
    readJson();
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Species'),
      ),
    );
  }
}

Future<void> readJson() async {
  final String response = await rootBundle.loadString('data/data.json');
  final data = await json.decode(response);
  print(response);
// ...
}
