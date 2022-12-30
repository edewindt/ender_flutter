import 'package:ender_app/screens/character.dart';
import 'package:ender_app/widgets/army.dart';
import 'package:flutter/material.dart';

class CardItem2 extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  final List<String> notable_members;
  const CardItem2(
      {required this.title,
      required this.image,
      required this.id,
      required this.notable_members,
      super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: (() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Army()));
          }),
          child: GridTile(
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
                backgroundColor: Color.fromARGB(201, 0, 0, 0),
                title: Text(
                  '$id. $title',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                )),
          ),
        ),
      ),
    );
  }
}
