import 'package:flutter/material.dart';
import 'package:ActApp/splesh.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calories Calculator \n D&S Software",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new Splashscreen(),
    );
  }
}
