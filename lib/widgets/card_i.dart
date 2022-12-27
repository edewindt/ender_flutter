import 'package:ender_app/screens/character.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  final String bio;
  final String trvia;
  final String species;
  final String quote;
  const CardItem(
      {required this.title,
      required this.image,
      required this.id,
      required this.bio,
      required this.species,
      required this.trvia,
      required this.quote,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: (() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    Character_s(title, bio, id, image, species, trvia, quote)));
          }),
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
            backgroundColor: Color.fromARGB(201, 0, 0, 0),
            title: Text(
              '$id. $title',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
