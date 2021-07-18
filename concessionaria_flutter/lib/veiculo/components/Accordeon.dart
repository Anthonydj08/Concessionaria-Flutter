import 'package:concessionaria_flutter/model/veiculo/VeiculoModel.dart';
// import 'package:concessionaria_flutter/veiculo/components/Check_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget botaoAccordeon(VeiculoModel veiculo) {
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
            child: ExpansionTile(
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
            ),
          ),
        ),
      ),
    ),
  );
}

Widget subBotaoExpansivo(texto, veiculo) {
  // final List<VeiculoModel> itens = [veiculo];

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
      Expanded(
        child: Column(
          children: [
            // ListView.builder(
            //   itemCount: itens.length,
            //   itemBuilder: (_, int index) {
            //     return CheckBoxWidget(
            //       veiculo: itens[index],
            //       texto: 'Sim ou não?',
            //     );
            //   },
            // ),
          ],
        ),
      ),
    ],
  );
}
