import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "codepur";

    return Scaffold(
      appBar: AppBar(
        title: Text("Jiometry"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to flutter $days by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
