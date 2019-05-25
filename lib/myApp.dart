import 'package:flutter/material.dart';
import 'caraOuCoroaWidget.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   var randomizer = new Random();

   int gerarLado() {
    int selection;
    setState(() {
      var num = randomizer.nextInt(2);
      selection  = num;
    });
    debugPrint("Saida " + selection.toString());
    return selection;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff00ff80),
        appBar: AppBar(
          title: Text(" Cara ou Coroa"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 150.0, bottom: 10.0),
              child: CaraOuCoroaWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/resultado", arguments: this.gerarLado());
                  },
                  child: Text(
                    "JOGAR",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ));
  }
}
