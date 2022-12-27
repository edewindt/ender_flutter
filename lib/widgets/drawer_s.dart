import 'package:ender_app/screens/tabs_s.dart';
import "package:flutter/material.dart";

class Drawer_s extends StatelessWidget {
  const Drawer_s({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildItem(String title, IconData icon, VoidCallback handle) {
      return ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: handle,
      );
    }

    return Drawer(
      backgroundColor: Theme.of(context).shadowColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Ender API',
                style: TextStyle(fontSize: 20),
              ),
            ),
            buildItem('Armies', Icons.colorize, () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: ((context) => Tabs_s(0))));
            }),
            buildItem('Species', Icons.public, () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: ((context) => Tabs_s(1))));
            }),
            buildItem('Characters', Icons.groups, () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: ((context) => Tabs_s(2))));
            })
          ],
        ),
      ),
    );
  }
}
