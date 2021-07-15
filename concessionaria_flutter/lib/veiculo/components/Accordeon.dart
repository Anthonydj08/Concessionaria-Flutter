// import 'package:concessionaria_flutter/model/veiculo/Veiculo.dart';
// import 'package:concessionaria_flutter/veiculo/components/Check_Box.dart';
import 'package:concessionaria_flutter/model/veiculo/Veiculo_Model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget botaoAccordeon(Veiculo veiculo) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 41, 45, 50),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color.fromRGBO(0, 184, 160, 1),
                  width: 0.5,
                )
                // ),
                ),
            child: buildText(veiculo),
          ),
        ),
      ),
    ),
  );
}

Widget buildText(Veiculo veiculo) {
  return ExpansionTile(
    title: Text(
      'Mais Informações',
      style: GoogleFonts.lobster(fontSize: 24, color: Colors.white),
    ),
    children: [
      Container(
        child: Column(
          children: [
            subBotaoExpansivo('Segurança', veiculo),
          ],
        ),
      ),
    ],
  );
}

bool value = false;

Widget subBotaoExpansivo(texto, Veiculo veiculo) {
  return ExpansionTile(
    title: Text(
      texto,
      textAlign: TextAlign.center,
      style: GoogleFonts.lobster(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    children: [
      Column(
        children: [
          // CheckBoxInListView('airbag Motorista', veiculo.airbagMotorista),
          // CheckBoxInListView('airbag Passageiro', veiculo.airbagPassageiro),
        ],
      ),
    ],
  );
}
