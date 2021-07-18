import 'package:concessionaria_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBar(texto) {
  return AppBar(
    title: Text(
      texto,
      style: GoogleFonts.lobster(fontSize: 28, color: Colors.white),
    ),
    centerTitle: true,
    elevation: 10,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
    ),
  );
}
