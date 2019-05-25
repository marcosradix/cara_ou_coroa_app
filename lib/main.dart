import 'package:cara_ou_coroa_app/routerGenerator.dart';
import 'package:flutter/material.dart';
import 'myApp.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    onGenerateRoute: RouterGenerator.generateRoute,
  ));

}