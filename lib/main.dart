import 'package:flutter/material.dart';
import 'package:jokenpo_app/ui/home.page.dart';

void main() => runApp(Jokenpo());

class Jokenpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(primaryColor: Colors.black),
      home: HomePage(),
    );
  }
}
