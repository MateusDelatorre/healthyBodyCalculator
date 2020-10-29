import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ActApp/gender.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Gender(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/Shape.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Center(
          child: new Text(
            "The best way to obtain biochemical data to maintain a healthy body",
            style: TextStyle(fontSize: 40.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        )
      ],
    ));
  }

  //@override
  //Widget build(BuildContext context) {
  // return Scaffold(
  //   child: [
  //       new Image.asset("assets/dani.jpg")
  //     ]
  // backgroundColor: Colors.redAccent,
  // body: Center(
  //  child: Text(
  //"The best way to obtain biochemical data to maintain a healthy body",
  //style: TextStyle(
  // fontSize: 40.0,
  // color: Colors.white,
  // ),
  // textAlign: TextAlign.center,

  // ),
  // ),
  //  );
  // }
  //
}
