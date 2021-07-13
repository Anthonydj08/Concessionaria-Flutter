import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget botaoAccordeon() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              borderRadius: BorderRadius.circular(15),
              image: new DecorationImage(
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: new AssetImage(
                  'assets/imagens/servicos.jpg',
                ),
              ),
            ),
            child: buildText(),
          ),
        ),
      ),
    ),
  );
}

Widget buildText() => ExpansionTile(
      title: Text(
        '      Serviços',
        textAlign: TextAlign.center,
        style: GoogleFonts.lobster(fontSize: 24, color: Colors.white),
      ),
      children: [
        Column(
          children: [
            subBotao('Consorcio'),
            subBotao('Financiamento'),
            subBotao('Seguro'),
          ],
        ),
      ],
    );

Widget subBotao(texto) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        // side: BorderSide(color: Colors.indigoAccent, width: 1),
      ),
      child: new InkWell(
        onTap: () {
          print("tapped");
        },
        child: Container(
          width: double.infinity,
          height: 50,
          color: Color.fromARGB(255, 41, 45, 60),
          child: Center(
            child: Text(
              texto,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  );
}
