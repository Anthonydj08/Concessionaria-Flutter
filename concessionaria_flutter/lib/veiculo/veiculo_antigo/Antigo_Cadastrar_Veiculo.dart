// import 'package:concessionaria_flutter/components/default_button.dart';
// import 'package:concessionaria_flutter/model/veiculo/VeiculoModel.dart';
// import 'package:concessionaria_flutter/veiculo/Listar_Veiculo.dart';
// import 'package:concessionaria_flutter/veiculo/components/App_Bar.dart';
// import 'package:flutter/material.dart';

// import '../components/default_input.dart';

// class CadastrarVeiculo extends StatefulWidget {
//   final VeiculoModel veiculo;
//   static String routeName = "/cadastrarVeiculo";

//   const CadastrarVeiculo({Key key, this.veiculo}) : super(key: key);

//   @override
//   _CadastrarVeiculoState createState() => _CadastrarVeiculoState();
// }

// class _CadastrarVeiculoState extends State<CadastrarVeiculo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBarVeiculo('Cadastrar Veiculo', ListarVeiculo.routeName, context),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         color: Color.fromARGB(255, 41, 45, 50),
//         child: Container(
//           width: MediaQuery.of(context).size.height,
//           child: Form(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: <Widget>[
//                     DefaultInput(
//                       label: 'Fabricante',
//                     ),
//                     DefaultInput(
//                       label: 'Modelo',
//                     ),
//                     DefaultInput(
//                       label: 'Ano',
//                     ),
//                     DefaultInput(
//                       label: 'Motorização',
//                     ),
//                     DefaultInput(
//                       label: 'Combustível',
//                     ),
//                     DefaultInput(
//                       label: 'Potência (cv)',
//                     ),
//                     DefaultInput(
//                       label: 'Torque (Kgf.m)',
//                     ),
//                     DefaultInput(
//                       label: 'Câmbio',
//                     ),
//                     DefaultInput(
//                       label: 'Direção',
//                     ),
//                     DefaultInput(
//                       label: 'Tanque (L)',
//                     ),
//                     DefaultButton(
//                       text: 'Salvar',
//                       press: () {
//                         Navigator.pushNamed(context, ListarVeiculo.routeName);
//                       },
//                     ),
//                     // botaoAccordeon(widget.veiculo),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
