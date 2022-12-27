import 'package:ender_app/widgets/card_i.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class Characters_s extends StatefulWidget {
  Characters_s({super.key});
  static const title = 'Characters';
  static const routeName = '/characters';

  @override
  State<Characters_s> createState() => _Characters_sState();
}

class _Characters_sState extends State<Characters_s> {
  List items = [];

  @override
  @override
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('data/data.json');
    final data = await json.decode(response);
    setState(() {
      items = data["data"];
    });

// ...
  }

  void initState() {
    readJson();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Characters_s.title),
        centerTitle: true,
      ),
      body: GridView(
        children: [
          for (var i in items) CardItem(i['name'], i['media'], i['id'])
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
