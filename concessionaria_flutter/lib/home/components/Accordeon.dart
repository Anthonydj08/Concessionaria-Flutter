import 'package:concessionaria_flutter/components/default_button.dart';
import 'package:concessionaria_flutter/constants.dart';
import 'package:concessionaria_flutter/home/Home.dart';
import 'package:concessionaria_flutter/size_config.dart';
import 'package:flutter/material.dart';

Widget botaoAccordeon(context) {
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
              color: const Color(0xFF000000),
              borderRadius: BorderRadius.circular(15),
              image: new DecorationImage(
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                image: new AssetImage(
                  'assets/imagens/servicos.jpg',
                ),
              ),
            ),
            child: buildText(context),
          ),
        ),
      ),
    ),
  );
}

Widget buildText(context) => ExpansionTile(
      title: Text(
        '      Serviços',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kTextColor,
        ),
      ),
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: DefaultButton(
                text: 'Consorcio',
                press: () {
                  Navigator.pushNamed(context, Home.routeName);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: DefaultButton(
                text: 'Financiamento',
                press: () {
                  Navigator.pushNamed(context, Home.routeName);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: DefaultButton(
                text: 'Seguro',
                press: () {
                  Navigator.pushNamed(context, Home.routeName);
                },
              ),
            )
          ],
        ),
      ],
    );

// Widget subBotao(texto) {
//   return Padding(
//     padding: const EdgeInsets.all(10.0),
//     child: Card(
//       semanticContainer: true,
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0),
//         // side: BorderSide(color: Colors.indigoAccent, width: 1),
//       ),
//       child: new InkWell(
//         onTap: () {
//           print("tapped");
//         },
//         child: Container(
//           width: double.infinity,
//           height: 50,
//           color: Color.fromARGB(255, 41, 45, 60),
//           child: Center(
//             child: Text(
//               texto,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
