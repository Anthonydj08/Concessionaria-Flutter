import 'package:concessionaria_flutter/veiculo/create/Cadastrar_Veiculo.dart';
import 'package:concessionaria_flutter/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'db/database.dart';
import 'home/Home.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key,required this.db}) : super(key: key);
  final AppDatabase db;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Concessionaira',
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/Home': (context) => Home(db: db),
        '/cadastrarVeiculo': (context) => CadastrarVeiculo(db: db),
      },
    );
  }
}
