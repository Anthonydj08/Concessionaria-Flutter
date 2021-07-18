import 'package:flutter/material.dart';
import 'components/body.dart';
class Login extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 45, 50),
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Body(),
    );
  }
}
