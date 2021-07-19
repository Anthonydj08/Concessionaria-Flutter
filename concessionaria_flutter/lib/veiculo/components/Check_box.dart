// import 'package:concessionaria_flutter/model/veiculo/VeiculoModel.dart';
// import 'package:flutter/material.dart';

// class CheckBoxWidget extends StatefulWidget {
//   final VeiculoModel? veiculo;
//   final String? texto;
//   final bool? check;

//   CheckBoxWidget({Key? key, this.veiculo, this.texto, this.check}) : super(key: key);

//   @override
//   _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
// }

// class _CheckBoxWidgetState extends State<CheckBoxWidget> {
//   @override
//   Widget build(BuildContext context) {
//     Widget? widget;
//     return CheckboxListTile(
//       title: Text(widget.texto),
//       value: widget.check,
//       onChanged: (bool value) {
//         setState(() {
//           widget.veiculo.vidrosEletricos = value;
//         });
//       },
//     );
//   }
// }
