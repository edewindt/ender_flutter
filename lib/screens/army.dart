import 'package:flutter/material.dart';

class Army extends StatelessWidget {
  final String title;
  final int id;
  final String image;
  final List<String> notable_members;
  const Army(
      {required this.id,
      required this.image,
      required this.notable_members,
      required this.title,
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

  Widget buildContent(BuildContext context, List<String> text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(20)),
      child: ListView.builder(
        itemCount: text.length,
        itemBuilder: (context, index) => Material(
          elevation: 4,
          child: Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black54)),
            padding: EdgeInsets.all(9),
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(
                '${text[index]}',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
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
          buildSectionTitle(context, 'Notable Members'),
          buildContent(context, notable_members)
        ],
      )),
    );
  }
}
