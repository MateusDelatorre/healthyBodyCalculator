import 'dart:ui';
//import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';

class MaleHomePage extends StatefulWidget {
  @override
  State createState() => new MaleHomePageState();
}

class MaleHomePageState extends State<MaleHomePage> {
  double weight = 0,
      height = 0,
      age = 0,
      bmi = 0,
      bmlo = 0,
      bmli = 0,
      bmMo = 0,
      bma = 0,
      bmac = 0,
      bmex = 0,
      dop = 0,
      fim = 0,
      fin = 0,
      cap = 0,
      docal = 0,
      docalt = 0,
      doiwc = 0,
      dobfp = 0,
      hma = 0,
      cad = 0,
      cat = 0,
      beats = 0,
      hrr = 0,
      dor = 0;

  double plus = 0,
      wc = 0,
      mi = 0,
      cal = 0,
      car = 0,
      caw = 0,
      dob = 0,
      doa = 0,
      qui = 0;

  //external double log(num x);

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  final TextEditingController t3 = new TextEditingController(text: "");
  final TextEditingController t4 = new TextEditingController(text: "");
  final TextEditingController t5 = new TextEditingController(text: "");
  final TextEditingController t6 = new TextEditingController(text: "");
  final TextEditingController t7 = new TextEditingController(text: "");
  final TextEditingController t8 = new TextEditingController(text: "");

// taxa massa corporal
  void doBmi() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);

      plus = height * height;
      fin = (weight / plus);
      bmi = fin.roundToDouble();
    });
  }

// peso ideal
  void doIwc() {
    setState(() {
      height = double.parse(t2.text);
      wc = (height - 1.524) / 0.0254;
      fin = wc * 1.9 + 56;
      doiwc = fin.roundToDouble();
    });
  }
// taxa metabolica

  void doCal() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);
      dob = height * height;
      qui = (weight / dob);
      cal = (100 - qui) / 100;
      caw = weight * cal;
      fin = (21.6 * caw) + 370;
      docal = fin.roundToDouble();
    });
  }

  void doCaltotal() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);
      dob = height * height;
      qui = (weight / dob);
      cal = (100 - qui) / 100;
      caw = weight * cal;
      fin = (21.6 * caw) + 370;
      docalt = fin.roundToDouble();
    });
  }

  void doBfp() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);
      age = double.parse(t3.text);
      plus = height * height;
      bma = (weight / plus);

      //beats = double.parse(t4.text);
      //waist = double.parse(t5.text);
      //cap = 0.35004 * (log(waist - neck) / log(10));
      //cad = 0.22100 * (log(height) / log(10));
      //cat = 495 / (1.29579 - cap + cad);

      fin = (1.20 * bma) + (0.23 * age) - 16.2;
      dobfp = fin.roundToDouble();
    });
  }

  void doBmLo() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);
      dob = height * height;
      qui = (weight / dob);
      cal = (100 - qui) / 100;
      caw = weight * cal;
      fim = (21.6 * caw) + 370;
      fin = fim * 1.2;
      bmlo = fin.roundToDouble();
    });
  }

  void doBmLi() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);
      dob = height * height;
      qui = (weight / dob);
      cal = (100 - qui) / 100;
      caw = weight * cal;
      fim = (21.6 * caw) + 370;
      fin = fim * 1.375;
      bmli = fin.roundToDouble();
    });
  }

  void doBmMo() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);
      dob = height * height;
      qui = (weight / dob);
      cal = (100 - qui) / 100;
      caw = weight * cal;
      fim = (21.6 * caw) + 370;
      fin = fim * 1.55;
      bmMo = fin.roundToDouble();
    });
  }

  void doBmAc() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);
      dob = height * height;
      qui = (weight / dob);
      cal = (100 - qui) / 100;
      caw = weight * cal;
      fim = (21.6 * caw) + 370;
      fin = fim * 1.725;
      bmac = fin.roundToDouble();
    });
  }

  void doBmEx() {
    setState(() {
      weight = double.parse(t1.text);
      height = double.parse(t2.text);
      dob = height * height;
      qui = (weight / dob);
      cal = (100 - qui) / 100;
      caw = weight * cal;
      fim = (21.6 * caw) + 370;
      fin = fim * 1.9;
      bmex = fin.roundToDouble();
    });
  }

  void doHrma() {
    setState(() {
      age = double.parse(t3.text);
      doa = age * age;
      fin = 191.5 - (0.007 * doa);
      hma = fin.roundToDouble();
    });
  }

  void doHrr() {
    setState(() {
      age = double.parse(t3.text);
      beats = double.parse(t4.text);
      doa = age * age;
      dor = 191.5 - (0.007 * doa);
      fin = dor - beats;
      hrr = fin.roundToDouble();
    });
  }

  //var valor = {doBfp, docal, docalt, doiwc, dobfp};

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Healthy Body Calculator \n     D&S Software"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(35.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //if doCal true
            //{

            new Text(
              "Result:\nIdeal Weigth = $doiwc  \nBody Mass Index = $bmi  \nAct Low = $bmlo - Act Ligth = $bmli Cal day\nAct Mod = $bmMo  - Act Act = $bmac Cal day\nAct Extr = $bmex - Basal = $docal Cal day\nMaximum Heart Rate = $hma - HRR = $hrr",
              style: new TextStyle(
                  decorationThickness: doiwc,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),

            // }
            new TextField(
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(hintText: "Enter your body weight in Kg"),
              controller: t1,
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(hintText: "Enter your body height in M"),
              controller: t2,
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter your Age"),
              controller: t3,
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText:
                      "Your resting heart rate (first) in the morning in BPM"),
              controller: t4,
            ),

            //

            new Padding(
              padding: const EdgeInsets.only(top: 15.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // peso ideal
                //
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 5.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Ideal weight',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doIwc,
                ),
                //
                // indice de masa corporal
                //

                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 5.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Body Mass Index',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doBmi,
                ),
              ],
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 15.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //   new MaterialButton(
                //    shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(15.0))),
                //  elevation: 5.0,
                //  minWidth: 100.0,
                // height: 15,
                // color: Color(0xFF801E48),
                // child: new Text('xxxxxxxxxx',
                //    style:
                //        new TextStyle(fontSize: 12.0, color: Colors.white)),
                //onPressed: doCaltotal,
                //),

                // atividade branda
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Activid\nlow',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doBmLo,
                ),

                // atividade leve

                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Activid\nligth',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doBmLi,
                ),

                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Activid\nModerate',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doBmMo,
                ),

                //new MaterialButton(
                //shape: RoundedRectangleBorder(
                //  borderRadius: BorderRadius.all(Radius.circular(15.0))),
                //elevation: 5.0,
                //minWidth: 100.0,
                //height: 15,
                // color: Color(0xFF801E48),
                // child: new Text('Activid',
                //    style:
                //       new TextStyle(fontSize: 12.0, color: Colors.white)),
                //onPressed: doBfp,
                //),
              ],
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 15.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Activid\nActivid',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doBmAc,
                ),
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Activid\nExtreme',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doBmEx,
                ),
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Basal\n Metabolic',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doCal,
                ),
              ],
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 15.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('Maximum \nHeart Rate',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doHrma,
                ),
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: 100.0,
                  height: 15,
                  color: Color(0xFF801E48),
                  child: new Text('heart \nrate reserve',
                      style:
                          new TextStyle(fontSize: 12.0, color: Colors.white)),
                  onPressed: doHrr,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
