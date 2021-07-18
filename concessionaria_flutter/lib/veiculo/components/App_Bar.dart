import 'package:concessionaria_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBarVeiculo(texto, rota, context) {
  return AppBar(
    title: Text(
      texto,
      style: GoogleFonts.lobster(fontSize: 26, color: Colors.white),
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
    ),
    elevation: 10,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
    ),
  );
}
