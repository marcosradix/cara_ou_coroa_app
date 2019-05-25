
import 'package:flutter/material.dart';

class CaraOuCoroa extends StatelessWidget {

  final int valorMoeda;
  CaraOuCoroa({Key key, @required this.valorMoeda}): super(key: key);

  Widget selecionarMoeda(int lado){
    AssetImage _assetImage;
    if(lado == 1){
      _assetImage = AssetImage("imagens/cara.jpg");
    }else{
      _assetImage = AssetImage("imagens/coroa.jpg");
    }
    return Image(image: _assetImage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          selecionarMoeda(this.valorMoeda),
        ],
      ),
    );
  }
}
