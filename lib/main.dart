import 'package:firstapp/Pages/home_page.dart';
import 'package:firstapp/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

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
    bringVegatables(thaila: true);
    return MaterialApp(
      //  home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }

  bringVegatables({required bool thaila, int ruppes = 100}) {
    print("Good happens");
  }
}
