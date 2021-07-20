import 'package:carousel_slider/carousel_slider.dart';
import 'package:concessionaria_flutter/constants.dart';
import 'package:concessionaria_flutter/model/veiculo/Veiculo_Model.dart';
import 'package:concessionaria_flutter/veiculo/Listar_Veiculo.dart';
import 'package:concessionaria_flutter/veiculo/components/App_Bar.dart';
import 'package:flutter/material.dart';

class VisualizarVeiculo extends StatefulWidget {
  static String routeName = "/visualizarVeiculo";

  VisualizarVeiculo({Key? key}) : super(key: key);

  @override
  _VisualizarVeiculoState createState() => _VisualizarVeiculoState();
}

class _VisualizarVeiculoState extends State<VisualizarVeiculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: appBarVeiculo(
          'Mitsubishi',
          ListarVeiculo.routeName,
          context,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 41, 45, 50),
          child: Column(
            children: [
              fotos(),
              infos(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget fotos() {
  final List<String> imagemList = [
    'assets/imagens/moto1.jpg',
    'assets/imagens/moto2.jpg',
    'assets/imagens/moto3.jpg',
    'assets/imagens/moto4.jpg',
    'assets/imagens/moto5.jpg',
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Center(
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: false,
        ),
        items: imagemList
            .map(
              (e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      e,
                      width: 1050,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    ),
  );
}

Widget infos() {
  return Column(
    children: [
      titulo('CG 160 Titan S', '2021'),
      label('Motorização', ''),
      label('Combustível', ''),
      label('Potência (cv)', ''),
      label('Torque (Kgf.m)', ''),
      label('Câmbio', ''),
      label('Direção', ''),
      label('Tanque (L)', ''),
    ],
  );
}

Widget titulo(titulo, subTitulo) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Center(
      child: Column(
        children: [
          Text(
            titulo,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            subTitulo,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget label(textoLabel, infoLabel) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      children: [
        Container(
          width: 188,
          decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
          ),
          child: Text(
            textoLabel,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Container(
          width: 188,
          decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
          ),
          child: Text(
            infoLabel,
            style: TextStyle(fontSize: 16.0),
          ),
        )
      ],
    ),
  );
}
