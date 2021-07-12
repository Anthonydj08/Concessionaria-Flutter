import 'package:concessionaria_flutter/veiculo/create/CadastroVeiculo.dart';
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
        '/': (context) => Home(),
        '/cadastroVeiculo': (context) => CadastroVeiculo(),
      },
    );
  }
}
