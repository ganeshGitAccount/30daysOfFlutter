import 'package:firstapp/home_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double pi = 3.14;
    // bool isMale = true;

    // num temp = 30.0;
    // var day = "Tuesday";
    // const pi = 3.14;

    return MaterialApp(home: HomePage());
  }
}
