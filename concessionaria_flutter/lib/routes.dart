import 'package:concessionaria_flutter/tema.dart';
import 'package:concessionaria_flutter/veiculo/Cadastrar_Veiculo.dart';
import 'package:concessionaria_flutter/veiculo/Listar_Veiculo.dart';
import 'package:concessionaria_flutter/veiculo/create/Visualizar_Veiculo.dart';
import 'package:concessionaria_flutter/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'db/database.dart';
import 'home/Home.dart';
import 'login/login.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key, required this.db}) : super(key: key);
  final AppDatabase db;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Concessionaira',
      theme: tema(),
      initialRoute: Welcome.routeName,
      routes: {
        Welcome.routeName: (context) => Welcome(),
        Home.routeName: (context) => Home(db: db),
        Login.routeName: (context) => Login(),
        CadastrarVeiculo.routeName: (context) => CadastrarVeiculo(db: db),
        ListarVeiculo.routeName: (context) => ListarVeiculo(),
        VisualizarVeiculo.routeName: (context) => VisualizarVeiculo(),
      },
    );
  }
}
