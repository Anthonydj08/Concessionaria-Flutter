import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleBar() {
  return AppBar(
    title: Text(
      'Honda Veiculos',
      style: GoogleFonts.lobster(fontSize: 28, color: Colors.black87),
    ),
    centerTitle: true,
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
