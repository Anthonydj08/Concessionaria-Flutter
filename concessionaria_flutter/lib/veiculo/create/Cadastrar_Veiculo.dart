import 'package:concessionaria_flutter/veiculo/components/App_Bar.dart';
import 'package:concessionaria_flutter/veiculo/components/Veiculo_Form.dart';
import 'package:flutter/material.dart';

class CadastrarVeiculo extends StatefulWidget {
  @override
  _CadastrarVeiculoState createState() => _CadastrarVeiculoState();
}

class _CadastrarVeiculoState extends State<CadastrarVeiculo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: iconBar(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 41, 45, 50),
          child: Container(
            width: MediaQuery.of(context).size.height,
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    textField(
                      'Fabricante',
                    ),
                    textField(
                      'Nome',
                    ),
                    textField(
                      'Placa',
                    ),
                    textField(
                      'Chassi',
                    ),
                    textField(
                      'KM',
                    ),
                    textField(
                      'Combustivel',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
