import 'package:concessionaria_flutter/veiculo/Cadastrar_Veiculo.dart';
import 'package:concessionaria_flutter/veiculo/Listar_Veiculo.dart';
import 'package:concessionaria_flutter/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'home/Home.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Concessionaira',
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/home': (context) => Home(),
        '/cadastrarVeiculo': (context) => CadastrarVeiculo(),
        '/listarVeiculo': (context) => ListarVeiculo(),
      },
    );
  }
}
