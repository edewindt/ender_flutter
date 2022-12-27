import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const title = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello World')),
    );
  }
}
