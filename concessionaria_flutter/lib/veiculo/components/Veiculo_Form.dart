import 'package:flutter/material.dart';

Widget textField(texto1) {
  return new Theme(
    data: new ThemeData(
      primaryColor: Color.fromRGBO(0, 184, 160, 1),
      primaryColorDark: Color.fromRGBO(0, 133, 116, 1),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: new TextField(
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          labelText: texto1,
          labelStyle: TextStyle(color: Colors.white),
          prefixIcon: const Icon(
            Icons.car_rental,
            color: Colors.white,
          ),
          border: new OutlineInputBorder(
            borderSide: new BorderSide(width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(0, 133, 116, 1)),
          ),
        ),
      ),
    ),
  );
}
