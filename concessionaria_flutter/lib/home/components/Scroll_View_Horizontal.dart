import 'package:concessionaria_flutter/home/Home.dart';
import 'package:concessionaria_flutter/veiculo/Listar_Veiculo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget opcoes(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 4.0, left: 8.0, right: 8.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          botao(
            context,
            'Veiculos',
            'assets/imagens/veiculos.jpg',
            ListarVeiculo(),
          ),
          botao(
            context,
            'Pós Venda',
            'assets/imagens/posVenda.jpg',
            Home(),
          ),
          botao(
            context,
            'Manutenção',
            'assets/imagens/manutencao.jpg',
            Home(),
          ),
          botao(
            context,
            'Peças',
            'assets/imagens/pecas.jpg',
            Home(),
          ),
        ],
      ),
    ),
  );
}

Widget texto() {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: Center(
      child: Text('O você quer fazer?',
          style: GoogleFonts.lobster(fontSize: 20, color: Colors.white)),
    ),
  );
}

Widget botao(context, texto, foto, rota) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        // side: BorderSide(color: Colors.indigo, width: 2),
      ),
      child: new InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rota),
        ),
        child: Container(
          width: 110.0,
          height: 110.0,
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: new AssetImage(
                foto,
              ),
            ),
          ),
          child: Center(
            child: Text(
              texto,
              textAlign: TextAlign.center,
              style: GoogleFonts.lobster(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}
