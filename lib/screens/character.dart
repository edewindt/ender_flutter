import 'package:flutter/material.dart';

class Character_s extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  final String bio;
  final String trivia;
  final String species;
  final String quote;
  const Character_s(this.title, this.bio, this.id, this.image, this.species,
      this.trivia, this.quote,
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

  Widget buildContent(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
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
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  image,
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 220,
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              )
            ],
          ),
          buildSectionTitle(context, 'Quote'),
          buildContent(context, quote),
          buildSectionTitle(context, 'Bio'),
          buildContent(context, bio),
          buildSectionTitle(context, 'Trivia'),
          buildContent(context, trivia),
          buildSectionTitle(context, 'Species: $species'),
        ],
      )),
    );
  }
}
