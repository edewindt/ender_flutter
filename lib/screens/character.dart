import 'package:flutter/material.dart';

class Character_s extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  final String bio;
  final String trvia;
  final String species;
  final String quote;
  const Character_s(this.title, this.bio, this.id, this.image, this.species,
      this.trvia, this.quote,
      {super.key});

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          buildSectionTitle(context, 'Quote'),
          Container(
            child: Text(quote),
          )
        ],
      )),
    );
  }
}
