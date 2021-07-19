import 'package:concessionaria_flutter/db/database.dart';

import 'package:flutter/material.dart';
import '../home/components/Accordeon.dart';
import '../home/components/Carousel.dart';
import '../home/components/Scroll_View_Horizontal.dart';
import '../components/App_Bar.dart';
import '../side_bar/Side_Menu.dart';

class Home extends StatefulWidget {
  Home({Key? key,required this.db}) : super(key: key);
  final AppDatabase db;

  @override
  _HomeState createState() => _HomeState(this.db);
  static String routeName = "/home";
}

class _HomeState extends State<Home> {
  final AppDatabase db;
  _HomeState(this.db);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child : appBar('Honda Veículos'),
        ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 41, 45, 50),
          child: Column(
            children: [
              slideFotos(),
              texto(),
              opcoes(context,db),
              botaoAccordeon(context),
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
