import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleBar() {
  return AppBar(
    title: Text(
      'Honda Veiculos',
      style: GoogleFonts.lobster(fontSize: 28, color: Colors.white),
    ),
    centerTitle: true,
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
