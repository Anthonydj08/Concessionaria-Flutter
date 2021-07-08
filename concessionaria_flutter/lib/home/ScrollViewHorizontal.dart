import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget opcoes() {
  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 4.0, left: 8.0, right: 8.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          botaoVeiculos(),
          botaoPosVenda(),
          botaoManutecao(),
          botaoPecas(),
        ],
      ),
    ),
  );
}

Widget botaoVeiculos() {
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
      side: BorderSide(color: Colors.indigo, width: 2),
    ),
    child: new InkWell(
      onTap: () {
        print("tapped");
      },
      child: Container(
        width: 170.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: new DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            image: new AssetImage(
              'assets/imagens/veiculos.jpg',
            ),
          ),
        ),
        child: Center(
          child: Text(
            'Veículos',
            textAlign: TextAlign.center,
            style: GoogleFonts.lobster(fontSize: 22, color: Colors.black87),
          ),
        ),
      ),
    ),
  );
}

Widget botaoPosVenda() {
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
      side: BorderSide(color: Colors.indigo, width: 2),
    ),
    child: new InkWell(
      onTap: () {
        print("tapped");
      },
      child: Container(
        width: 170.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: new DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            image: new AssetImage(
              'assets/imagens/posVenda.jpg',
            ),
          ),
        ),
        child: Center(
          child: Text(
            'Pós Venda',
            textAlign: TextAlign.center,
            style: GoogleFonts.lobster(fontSize: 22, color: Colors.black87),
          ),
        ),
      ),
    ),
  );
}

Widget botaoPecas() {
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
      side: BorderSide(color: Colors.indigo, width: 2),
    ),
    child: new InkWell(
      onTap: () {
        print("tapped");
      },
      child: Container(
        width: 170.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: new DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            image: new AssetImage(
              'assets/imagens/pecas.jpg',
            ),
          ),
        ),
        child: Center(
          child: Text(
            'Peças',
            textAlign: TextAlign.center,
            style: GoogleFonts.lobster(fontSize: 22, color: Colors.black87),
          ),
        ),
      ),
    ),
  );
}

Widget botaoManutecao() {
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
      side: BorderSide(color: Colors.indigo, width: 2),
    ),
    child: new InkWell(
      onTap: () {
        print("tapped");
      },
      child: Container(
        width: 170.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: new DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            image: new AssetImage(
              'assets/imagens/manutencao.jpg',
            ),
          ),
        ),
        child: Center(
          child: Text(
            'Manuteção',
            textAlign: TextAlign.center,
            style: GoogleFonts.lobster(fontSize: 22, color: Colors.black87),
          ),
        ),
      ),
    ),
  );
}
