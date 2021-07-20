import 'package:concessionaria_flutter/home/Home.dart';
import 'package:concessionaria_flutter/model/veiculo/VeiculoModel.dart';
import 'package:concessionaria_flutter/veiculo/Cadastrar_Veiculo.dart';
import 'package:concessionaria_flutter/veiculo/components/App_Bar.dart';
import 'package:concessionaria_flutter/veiculo/create/Visualizar_Veiculo.dart';
import 'package:flutter/material.dart';

class ListarVeiculo extends StatefulWidget {
  final List<VeiculoModel> veiculos = [];
  static String routeName = "/listarVeiculo";

  @override
  _ListarVeiculoState createState() => _ListarVeiculoState();
}

class _ListarVeiculoState extends State<ListarVeiculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: appBarVeiculo('Veículos', Home.routeName, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(CadastrarVeiculo.routeName);
        },
        child: const Icon(Icons.add),
        backgroundColor: Color.fromRGBO(0, 184, 160, 1),
      ),
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
                  children: [],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
