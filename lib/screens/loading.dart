import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> readJson() async {
    final _url = "https://enderapi-production.up.railway.app/armies";
    http.Response response = await http.get(Uri.parse(_url));
    // final String response = await rootBundle.loadString('data/data.json');
    final data = await json.decode(response.body);
    print(data);
    // setState(() {
    //   items = data["data"];
    // });

// ...
  }

  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading'),
    );
  }
}
