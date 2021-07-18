import 'package:concessionaria_flutter/tema.dart';
import 'package:concessionaria_flutter/veiculo/Cadastrar_Veiculo.dart';
import 'package:concessionaria_flutter/veiculo/Listar_Veiculo.dart';
import 'package:concessionaria_flutter/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'home/Home.dart';
import 'login/login.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Concessionaira',
      theme: tema(),
      initialRoute: Welcome.routeName,
      routes: {
        Welcome.routeName: (context) => Welcome(),
        Home.routeName: (context) => Home(),
        Login.routeName: (context) => Login(),
        '/': (context) => Welcome(),
        '/home': (context) => Home(),
        '/cadastrarVeiculo': (context) => CadastrarVeiculo(),
        '/listarVeiculo': (context) => ListarVeiculo(),
      },
    );
  }
}