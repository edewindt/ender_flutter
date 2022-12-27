import 'package:flutter/material.dart';

class Character_s extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  final String bio;
  final String trvia;
  final String species;
  const Character_s(
      this.title, this.bio, this.id, this.image, this.species, this.trvia,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
