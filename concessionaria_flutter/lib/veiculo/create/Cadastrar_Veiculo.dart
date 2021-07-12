import 'package:concessionaria_flutter/home/Home.dart';
import 'package:flutter/material.dart';

class CadastrarVeiculo extends StatefulWidget {
  @override
  _CadastrarVeiculoState createState() => _CadastrarVeiculoState();
}

class _CadastrarVeiculoState extends State<CadastrarVeiculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
    );
  }
}
