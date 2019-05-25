
import 'package:flutter/material.dart';

import 'TelaDeResultado.dart';
import 'myApp.dart';

class RouterGenerator{

  static Route<dynamic> generateRoute(RouteSettings settings){
    final args  = settings.arguments;
    switch(settings.name){
      case "/resultado":
        return MaterialPageRoute(builder: (_) => TelaDeResultado(ladoMoeda: args,));
      case "/":
        return MaterialPageRoute(builder: (_) => MyApp());
      default:
        return MaterialPageRoute(builder: (_) => MyApp());
    }
  }
}