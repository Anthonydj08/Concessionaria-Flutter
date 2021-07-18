
import 'package:concessionaria_flutter/constants.dart';
import 'package:concessionaria_flutter/login/login.dart';
import 'package:concessionaria_flutter/size_config.dart';
import 'package:flutter/material.dart';

import '../components/welcomeContent.dart';
import '../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int paginaAtual = 0;
  List<Map<String, String>> welcomeData = [
    {
      "text": "Bem vindo a concessionária!",
      "image": "assets/icones/compreCarro.png"
    },
    {
      "text": "Encontre todos os tipos de veiculos",
      "image": "assets/icones/veiculoVenda.png"
    },
    {
      "text": "Pague como quiser\nno conforto de casa",
      "image": "assets/icones/pagamento.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    paginaAtual = value;
                  });
                },
                itemCount: welcomeData.length,
                itemBuilder: (context, index) => WelcomeContent(
                  image: welcomeData[index]['image'],
                  text: welcomeData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        welcomeData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Continuar",
                      press: () {
                        Navigator.pushNamed(context, Login.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: paginaAtual == index ? 20 : 6,
      decoration: BoxDecoration(
        color: paginaAtual == index ? kPrimaryColor : Colors.greenAccent,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
