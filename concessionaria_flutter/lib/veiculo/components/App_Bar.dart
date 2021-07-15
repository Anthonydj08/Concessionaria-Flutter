import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget iconBar(context) {
  return AppBar(
    title: Text(
      'Cadastrar Veículo',
      style: GoogleFonts.lobster(fontSize: 28, color: Colors.white),
    ),
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
          colors: [
            Color.fromRGBO(0, 184, 160, 1),
            Color.fromRGBO(0, 133, 140, 1),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
    ),
  );
}
