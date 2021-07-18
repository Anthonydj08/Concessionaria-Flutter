import 'package:concessionaria_flutter/model/veiculo/VeiculoModel.dart';
import 'package:concessionaria_flutter/veiculo/components/Accordeon.dart';
import 'package:concessionaria_flutter/veiculo/components/App_Bar.dart';
import 'package:concessionaria_flutter/veiculo/components/Veiculo_Form.dart';
import 'package:flutter/material.dart';

class CadastrarVeiculo extends StatefulWidget {
  final VeiculoModel veiculo;

  const CadastrarVeiculo({Key key, this.veiculo}) : super(key: key);

  @override
  _CadastrarVeiculoState createState() => _CadastrarVeiculoState();
}

class _CadastrarVeiculoState extends State<CadastrarVeiculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: iconBar('Cadastrar Veiculo', '/listarVeiculo', context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 41, 45, 50),
        child: Container(
          width: MediaQuery.of(context).size.height,
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    textField(
                      'Fabricante',
                    ),
                    textField(
                      'Modelo',
                    ),
                    textField(
                      'Ano',
                    ),
                    botaoAccordeon(widget.veiculo),
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
