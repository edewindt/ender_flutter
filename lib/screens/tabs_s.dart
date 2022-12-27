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
  List<Map<String, Object>> pages = [
    {'page': Armies()},
    {'page': Species()},
    {'page': Characters_s()}
  ];
  int pagei = 0;
  void page(int ind) {
    setState(() {
      pagei = ind;
    });
  }

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
          ),
          body: pages[pagei]['page'] as Widget,
          bottomNavigationBar: BottomNavigationBar(
              onTap: page,
              backgroundColor: Theme.of(context).shadowColor,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.blue,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.colorize), label: 'Armies'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.public), label: 'Species'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.groups), label: 'Characters')
              ]),
        ));
  }
}
