import 'package:concessionaria_flutter/size_config.dart';
import 'package:concessionaria_flutter/welcome/components/body.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  static String routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 45, 50),
      body: Body(),
    );
  }
}
