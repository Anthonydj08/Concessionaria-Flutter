import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //tamanho da tela W/H
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 150,
              child: Image.asset(
                "assets/imagens/carro.png",
                width: size.width * 0.5,
              )),
          IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.of(context).pushNamed('/Home');
              })
        ],
      ),
    );
  }
}
