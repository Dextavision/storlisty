import 'package:flutter/material.dart';
import 'package:storlisty/views/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Storlisty',
      home: Home()
    );
  }
}
