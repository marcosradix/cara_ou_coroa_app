import 'package:flutter/material.dart';

import 'caraOuCoroa.dart';

class TelaDeResultado extends StatelessWidget {
  final int ladoMoeda;
  TelaDeResultado({@required this.ladoMoeda});

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
            child: CaraOuCoroa(valorMoeda: ladoMoeda),
          ),
        ],
      ),
    );


  }
}
