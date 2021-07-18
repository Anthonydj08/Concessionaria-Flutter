import 'package:flutter/material.dart';
import '../home/components/Accordeon.dart';
import '../home/components/Carousel.dart';
import '../home/components/Scroll_View_Horizontal.dart';
import '../components/App_Bar.dart';
import '../side_bar/Side_Menu.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  static String routeName = "/home";
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Honda Veículos'),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 41, 45, 50),
          child: Column(
            children: [
              slideFotos(),
              texto(),
              opcoes(context),
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
