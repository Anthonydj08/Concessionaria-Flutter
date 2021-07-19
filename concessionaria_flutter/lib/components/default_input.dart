import 'package:concessionaria_flutter/components/custom_svg_icon.dart';
import 'package:concessionaria_flutter/constants.dart';
import 'package:flutter/material.dart';

class DefaultInput extends StatelessWidget {
  const DefaultInput({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final String? label;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(color: kTextColor),
        decoration: InputDecoration(
          labelStyle: TextStyle(color: kTextColor),
          labelText: label,
          suffixIcon: CustomSuffixIcon(
            svgIcon: icon!,
          ),
        ),
      ),
    );
  }
}
