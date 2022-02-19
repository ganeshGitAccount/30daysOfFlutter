import 'dart:ui';

import 'package:firstapp/utilis/routes.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonStatus = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      buttonStatus = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoute.homeRoute);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: buttonStatus ? 50 : 150,
                    height: 40,
                    child: buttonStatus
                        ? Icon(Icons.done, color: Colors.white)
                        : const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape:
                        //     buttonStatus ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(buttonStatus ? 50.0 : 8.0)),
                  ),
                ),

                // ElevatedButton(
                //     style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                //     onPressed: () {
                //       Navigator.pushNamed(context, MyRoute.homeRoute);
                //       print("Hi codepur");
                //     },
                //     child: Text("Login")),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
/*
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
              fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
*/
