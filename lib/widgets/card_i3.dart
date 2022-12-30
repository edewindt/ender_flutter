import 'package:ender_app/screens/character.dart';
import 'package:ender_app/screens/army.dart';
import 'package:ender_app/screens/loading.dart';
import 'package:ender_app/widgets/specie.dart';
import 'package:flutter/material.dart';

class CardItem3 extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  final bool ramen;
  final bool varelse;
  final String behavior;
  const CardItem3(
      {required this.title,
      required this.image,
      required this.id,
      required this.behavior,
      required this.ramen,
      required this.varelse,
      super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: (() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Specie(
                    title: title,
                    image: image,
                    id: id,
                    behavior: behavior,
                    ramen: ramen,
                    varelse: varelse)));
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
