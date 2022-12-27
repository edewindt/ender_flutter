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
    {'page': Armies(), 'title': 'Armies', 'icon': Icons.colorize},
    {'page': Species(), 'title': 'Species', 'icon': Icons.public},
    {'page': Characters_s(), 'title': 'Characters', 'icon': Icons.groups}
  ];
  void page(int ind) {
    setState(() {
      widget.page = ind;
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
            title: Text(pages[widget.page]['title'] as String),
            centerTitle: true,
          ),
          body: pages[widget.page]['page'] as Widget,
          bottomNavigationBar: BottomNavigationBar(
              onTap: page,
              backgroundColor: Theme.of(context).shadowColor,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white,
              currentIndex: widget.page,
              items: [
                for (var i in pages)
                  BottomNavigationBarItem(
                      icon: Icon(i['icon'] as IconData),
                      label: i['title'] as String)
              ]),
        ));
  }
}
