import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget sideBar() {
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
          veiculos(),
          posVenda(),
          manutecao(),
          pecas(),
          consorcio(),
          financiamento(),
          seguro(),
          configuracoes(),
          sair()
        ],
      ),
    ),
  );
}

Widget veiculos() {
  return ListTile(
    title:
        Text('Veículos', style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}

Widget posVenda() {
  return ListTile(
    title:
        Text('Pós Venda', style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}

Widget manutecao() {
  return ListTile(
    title:
        Text('Manuteção', style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}

Widget pecas() {
  return ListTile(
    title: Text('peças', style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}

Widget consorcio() {
  return ListTile(
    title:
        Text('Consorcio', style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}

Widget financiamento() {
  return ListTile(
    title: Text('Financiamento',
        style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}

Widget seguro() {
  return ListTile(
    title: Text('Seguro', style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}

Widget configuracoes() {
  return ListTile(
    title: Text('Configurações',
        style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}

Widget sair() {
  return ListTile(
    title: Text('Sair', style: TextStyle(fontSize: 16, color: Colors.white)),
    onTap: () {},
  );
}
