import 'package:flutter/material.dart';

class Specie extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  final bool ramen;
  final bool varelse;
  final String behavior;

  const Specie(
      {required this.title,
      required this.image,
      required this.id,
      required this.behavior,
      required this.ramen,
      required this.varelse,
      super.key});

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
                    '$id. $title',
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              )
            ],
          ),
          buildSectionTitle(context, 'Behavior'),
          buildContent(context, behavior),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Ramen: $ramen',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('Varelse: $varelse', style: TextStyle(fontSize: 20))
                ],
              ))
        ],
      )),
    );
  }
}
