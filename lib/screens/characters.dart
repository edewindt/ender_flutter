import 'package:ender_app/screens/loading.dart';
import 'package:ender_app/widgets/card_i.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class Characters_s extends StatefulWidget {
  Characters_s({super.key});
  static const title = 'Characters';
  static const routeName = '/characters';

  @override
  State<Characters_s> createState() => _Characters_sState();
}

class _Characters_sState extends State<Characters_s> {
  List items = [];

  @override
  Widget build(BuildContext context) {
    return Loading();
    // return GridView(
    //   children: [
    //     for (var i in items)
    //       CardItem(
    //         id: i['id'],
    //         title: i['name'],
    //         image: i['media'],
    //         bio: i['bio'],
    //         species: i['species'],
    //         trvia: i['trivia'],
    //         quote: i['quote'],
    //       )
    //   ],
    //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //     maxCrossAxisExtent: 300,
    //     childAspectRatio: 3 / 2,
    //     crossAxisSpacing: 20,
    //     mainAxisSpacing: 20,
    //   ),
    // );
  }
}
