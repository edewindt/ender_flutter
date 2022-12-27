import 'package:ender_app/screens/armies.dart';
import 'package:ender_app/screens/characters.dart';
import 'package:ender_app/screens/species.dart';
import 'package:flutter/material.dart';

class Tabs_s extends StatefulWidget {
  const Tabs_s({super.key});

  @override
  State<Tabs_s> createState() => _Tabs_sState();
}

class _Tabs_sState extends State<Tabs_s> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Ender API'),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(text: 'Armies'),
              Tab(
                text: 'Species',
              ),
              Tab(
                text: 'Characters',
              )
            ]),
          ),
          body: TabBarView(children: [Armies(), Characters_s(), Species()]),
        ));
  }
}
