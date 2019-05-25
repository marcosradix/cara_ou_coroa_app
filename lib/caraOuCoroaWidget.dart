
import 'package:flutter/material.dart';

class CaraOuCoroaWidget extends StatelessWidget {
  AssetImage _assetImage = AssetImage("imagens/1real.gif");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image(image: _assetImage),
        ],
      ),
    );
  }
}
