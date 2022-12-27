import 'package:ender_app/screens/armies.dart';
import 'package:ender_app/screens/characters.dart';
import 'package:ender_app/screens/species.dart';
import 'package:ender_app/widgets/drawer_s.dart';
import 'package:flutter/material.dart';

class Tabs_s extends StatefulWidget {
  int page = 1;
  Tabs_s(this.page, {super.key});

  @override
  State<Tabs_s> createState() => _Tabs_sState();
}

class _Tabs_sState extends State<Tabs_s> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: widget.page,
        length: 3,
        child: Scaffold(
          drawer: Drawer_s(),
          appBar: AppBar(
            title: Text('Ender API'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Armies',
                  icon: Icon(Icons.colorize),
                ),
                Tab(
                  text: 'Species',
                  icon: Icon(Icons.public),
                ),
                Tab(
                  text: 'Characters',
                  icon: Icon(Icons.groups),
                )
              ],
              labelColor: Colors.blue,
            ),
          ),
          body: TabBarView(children: [Armies(), Species(), Characters_s()]),
        ));
  }
}
