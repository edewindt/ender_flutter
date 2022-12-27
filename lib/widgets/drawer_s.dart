import "package:flutter/material.dart";

class Drawer_s extends StatelessWidget {
  const Drawer_s({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildItem(String title, IconData icon) {
      return ListTile(
        leading: Icon(icon),
        title: Text(title),
      );
    }

    return Drawer(
      backgroundColor: Theme.of(context).shadowColor,
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              'Ender API',
              style: TextStyle(fontSize: 20),
            ),
          ),
          buildItem('Armies', Icons.colorize),
          buildItem('Species', Icons.public),
          buildItem('Characters', Icons.groups)
        ],
      ),
    );
  }
}
