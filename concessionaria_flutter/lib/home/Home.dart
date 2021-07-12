import 'package:concessionaria_flutter/home/Accordeon.dart';
import 'package:concessionaria_flutter/home/Carousel.dart';
import 'package:concessionaria_flutter/home/ScrollViewHorizontal.dart';
import 'package:concessionaria_flutter/home/Title.dart';
import 'package:concessionaria_flutter/side_bar/Side_Menu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 41, 45, 50),
          child: Column(
            children: [
              slideFotos(),
              opcoes(),
              botaoAccordeon(),
              // rodaPe(),
            ],
          ),
        ),
      ),
      drawer: sideBar(),
    );
  }
}

// Widget rodaPe() {
//   return Row(
//     children: [
//       Container(
//         width: 392.7,
//         height: 50,
//         color: Colors.blueGrey[100],
//       )
//     ],
//   );
// }
