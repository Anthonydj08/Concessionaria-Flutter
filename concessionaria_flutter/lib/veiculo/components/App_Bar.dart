import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget iconBar(context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pushNamed('/Home');
      },
    ),
    elevation: 10,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo, Colors.deepPurpleAccent],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
    ),
  );
}
