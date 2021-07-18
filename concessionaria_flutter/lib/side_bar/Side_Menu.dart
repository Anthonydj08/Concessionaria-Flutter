import 'package:concessionaria_flutter/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget sideBar(context) {
  return Drawer(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurpleAccent, Colors.indigo],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/imagens/slogan.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Title(
                    color: Colors.white,
                    child: Text(
                      'Honda',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lobster(
                          fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          itemSideMenu(context, 'Cadastrar Veículo', '/cadastroVeiculo'),
          itemSideMenu(context, 'Veículos', '/welcome'),
          itemSideMenu(context, 'Pós Venda', '/welcome'),
          itemSideMenu(context, 'Manuteção', '/welcome'),
          itemSideMenu(context, 'peças', '/welcome'),
          itemSideMenu(context, 'Consorcio', '/welcome'),
          itemSideMenu(context, 'Financiamento', '/welcome'),
          itemSideMenu(context, 'Seguro', '/welcome'),
          itemSideMenu(context, 'Configurações', '/welcome'),
          itemSideMenu(context, 'Sair', Welcome.routeName)
        ],
      ),
    ),
  );
}

Widget itemSideMenu(context, texto, url) {
  return ListTile(
    title: Text(texto, style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {
      Navigator.of(context).pushNamed(url);
    },
  );
}
