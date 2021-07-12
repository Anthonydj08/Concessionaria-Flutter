import 'package:concessionaria_flutter/veiculo/components/App_Bar.dart';
import 'package:flutter/material.dart';

class CadastrarVeiculo extends StatefulWidget {
  @override
  _CadastrarVeiculoState createState() => _CadastrarVeiculoState();
}

class _CadastrarVeiculoState extends State<CadastrarVeiculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: iconBar(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 41, 45, 50),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.height,
              )
            ],
          ),
        ),
      ),
    );
  }
}
