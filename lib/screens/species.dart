import 'package:ender_app/screens/loading.dart';
import 'package:ender_app/widgets/card_i3.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Species extends StatefulWidget {
  const Species({super.key});
  static const title = 'Species';
  static const routeName = '/species';

  @override
  State<Species> createState() => _SpeciesState();
}

class _SpeciesState extends State<Species> {
  List items = [];
  bool _isLoading = false;
  Future<void> readJson() async {
    setState(() {
      _isLoading = true;
    });
    final _url = "https://enderapi-production.up.railway.app/species";
    http.Response response = await http.get(Uri.parse(_url));
    // final String response = await rootBundle.loadString('data/data.json');
    final data = await json.decode(response.body);

    setState(() {
      items = data;
      _isLoading = false;
    });

// ...
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  Widget build(BuildContext context) {
    return _isLoading
        ? Loading()
        : GridView(
            children: [
              for (var i in items)
                CardItem3(
                  id: i['id'],
                  title: i['name'],
                  image: i['media'],
                  ramen: i['ramen'],
                  varelse: i['varelse'],
                  behavior: i['behavior'],
                )
            ],
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          );
  }
}


// class Armies extends StatefulWidget {
//   const Armies({super.key});
//   static const title = 'Armies';
//   static const routeName = '/armies';

//   @override
//   State<Armies> createState() => _ArmiesState();
// }

// class _ArmiesState extends State<Armies> {
//   List items = [];
//   bool _isLoading = false;
//   Future<void> readJson() async {
//     setState(() {
//       _isLoading = true;
//     });
//     final _url = "https://enderapi-production.up.railway.app/armies";
//     http.Response response = await http.get(Uri.parse(_url));
//     // final String response = await rootBundle.loadString('data/data.json');
//     final data = await json.decode(response.body);

//     setState(() {
//       items = data;
//       _isLoading = false;
//       print(data);
//     });

// // ...
//   }

//   @override
//   void initState() {
//     readJson();
//     super.initState();
//   }

//   Widget build(BuildContext context) {
//     return _isLoading
//         ? Loading()
//         : GridView(
//             children: [
//               for (var i in items)
//                 CardItem2(
//                   id: i['id'],
//                   title: i['name'],
//                   image: i['media'],
//                   notable_members: i['notable_members'].cast<String>(),
//                 )
//             ],
//             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//               maxCrossAxisExtent: 300,
//               childAspectRatio: 3 / 2,
//               crossAxisSpacing: 20,
//               mainAxisSpacing: 20,
//             ),
//           );
//   }
// }
