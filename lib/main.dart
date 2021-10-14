import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
const request="https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL";

void main() async {

  runApp(MaterialApp(
    home: Home(

    ),
  ));

}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('\$ Conversor \$'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
    );
  }
}


Future<Map> getData() async{
  var url = Uri.parse(request);
  http.Response response = await http.get(url);
  return json.decode(response.body);
}