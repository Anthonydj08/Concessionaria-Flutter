import 'package:concessionaria_flutter/constants.dart';
import 'package:concessionaria_flutter/login/components/login_form.dart';
import 'package:concessionaria_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              Text(
                "Bem vindo!",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Faça login com seu e-mail \nou continue sem logar",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              LoginForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não possui uma conta? ",
                    style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/cadastro'),
                    child: Text(
                      "Cadastre-se",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
