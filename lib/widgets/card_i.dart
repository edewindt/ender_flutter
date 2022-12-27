import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String image;
  final int id;
  const CardItem(this.title, this.image, this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: (() {
            print(title);
          }),
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
            backgroundColor: Color.fromARGB(201, 0, 0, 0),
            title: Text(
              title,
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
