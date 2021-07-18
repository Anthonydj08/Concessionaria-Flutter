import 'package:concessionaria_flutter/constants.dart';
import 'package:concessionaria_flutter/size_config.dart';
import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'Concessionária\nFlutter',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}