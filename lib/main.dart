import 'package:flutter/material.dart';
import 'package:tercerapractica/Cliente.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Cliente(),
    );
  }
}