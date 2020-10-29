import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page_male.dart';
import 'home_page_female.dart';

class Gender extends StatefulWidget {
  @override
  State createState() => new GenderState();
}

class GenderState extends State<Gender> {
  void maleState() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MaleHomePage(),
      ));
    });
  }

  void femaleState() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => FemaleHomePage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Healthy Body Calculator \n     D&S Software"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 40),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color: Colors.redAccent)),
              onPressed: femaleState,
              color: Colors.red,
              textColor: Colors.white,
              child:
                  Text('Female'.toUpperCase(), style: TextStyle(fontSize: 25)),
            ),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color: Colors.redAccent)),
              onPressed: maleState,
              color: Colors.white,
              textColor: Colors.red,
              child: Text('Male'.toUpperCase(), style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
