import 'package:ender_app/screens/armies.dart';
import 'package:ender_app/screens/characters.dart';
import 'package:ender_app/screens/species.dart';
import 'package:ender_app/widgets/drawer_s.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url =
    Uri.parse('https://enderapi-production.up.railway.app/swagger/');

enum Options { Contact, About, Swagger }

class Tabs_s extends StatefulWidget {
  int page = 1;
  Tabs_s(this.page, {super.key});

  @override
  State<Tabs_s> createState() => _Tabs_sState();
}

class _Tabs_sState extends State<Tabs_s> {
  bool isExtended = false;
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

  final selectedColor = Colors.red;
  final unselectedColor = Colors.white60;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: widget.page,
      length: 3,
      child: Scaffold(
          // drawer: Drawer_s(),
          appBar: AppBar(
            leading: InkWell(
              child: Container(
                  width: 30,
                  padding: EdgeInsets.symmetric(horizontal: 23),
                  child: Icon(Icons.menu)),
              onTap: () => setState(() => isExtended = !isExtended),
            ),
            title: Text(pages[widget.page]['title'] as String),
            actions: [
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                onSelected: (Options value) {
                  if (value == Options.Swagger) {
                    _launchUrl();
                  } else {
                    print('Not implemented');
                  }
                },
                itemBuilder: (_) => [
                  PopupMenuItem(
                    child: Text('About'),
                    value: Options.About,
                  ),
                  PopupMenuItem(
                    child: Text('Contact'),
                    value: Options.Contact,
                  ),
                  PopupMenuItem(
                    child: Text('Swagger Docs'),
                    value: Options.Swagger,
                  )
                ],
              )
            ],
          ),
          body: Row(
            children: [
              NavigationRail(
                // labelType: NavigationRailLabelType.selected,
                selectedLabelTextStyle: TextStyle(color: selectedColor),
                selectedIndex: widget.page,
                extended: isExtended,
                onDestinationSelected: page,
                selectedIconTheme:
                    IconThemeData(color: selectedColor, size: 35),
                destinations: [
                  for (var i in pages)
                    NavigationRailDestination(
                        icon: Icon(i['icon'] as IconData),
                        label: Text(i['title'] as String))
                ],
              ),
              Expanded(child: pages[widget.page]['page'] as Widget)
            ],
          )
          // bottomNavigationBar: BottomNavigationBar(
          //     onTap: page,
          //     backgroundColor: Theme.of(context).shadowColor,
          //     unselectedItemColor: Colors.grey,
          //     selectedItemColor: Colors.white,
          //     currentIndex: widget.page,
          //     items: [
          //       for (var i in pages)
          //         BottomNavigationBarItem(
          //             icon: Icon(i['icon'] as IconData),
          //             label: i['title'] as String)
          //     ]),

          ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
