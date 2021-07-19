import 'package:concessionaria_flutter/db/database.dart';
import 'package:concessionaria_flutter/home/components/Accordeon.dart';
import 'package:concessionaria_flutter/home/components/Carousel.dart';
import 'package:concessionaria_flutter/home/components/Scroll_View_Horizontal.dart';
import 'package:concessionaria_flutter/home/components/App_Bar.dart';
import 'package:concessionaria_flutter/side_bar/Side_Menu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key,required this.db}) : super(key: key);
  final AppDatabase db;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child :titleBar(),
        ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 41, 45, 50),
          child: Column(
            children: [
              slideFotos(),
              texto(),
              opcoes(context),
              botaoAccordeon(),
            ],
          ),
        ),
      ),
      drawer: sideBar(context),
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
