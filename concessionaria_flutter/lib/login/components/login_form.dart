import 'package:concessionaria_flutter/components/custom_svg_icon.dart';
import 'package:concessionaria_flutter/components/default_button.dart';
import 'package:concessionaria_flutter/components/form_error.dart';
import 'package:concessionaria_flutter/constants.dart';
import 'package:concessionaria_flutter/home/Home.dart';
import 'package:concessionaria_flutter/size_config.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String senha;
  bool lembrar = false;
  final List<String> erros = [];
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSenhaFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: lembrar,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    lembrar = value;
                  });
                },
              ),
              Text('Lembrar-me'),
              Spacer(),
              Text(
                "Esqueci minha senha",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          //SizedBox(height: getProportionateScreenHeight(30)),
          FormError(erros: erros),
          DefaultButton(
            text: 'Login',
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: 'Continuar Sem login',
            press: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          )
        ],
      ),
    );
  }

  TextFormField buildSenhaFormField() {
    return TextFormField(
      obscureText: true,
      style: TextStyle(color: kTextColor),
      onSaved: (newValue) => senha = newValue,
      onChanged: (value) {
        if (value.isEmpty && erros.contains(kPassNullError)) {
          setState(() {
            erros.remove(kPassNullError);
          });
        } else if (value.length >= 8 && erros.contains(kShortPassError)) {
          setState(() {
            erros.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !erros.contains(kPassNullError)) {
          setState(() {
            erros.add(kPassNullError);
          });
        } else if (value.length < 8 && !erros.contains(kShortPassError)) {
          setState(() {
            erros.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelStyle: TextStyle(color: kTextColor),
        hintStyle: TextStyle(color: kTextColor),
        labelText: 'Senha',
        hintText: 'Digite sua senha',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icones/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: TextStyle(color: kTextColor),
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && erros.contains(kEmailNullError)) {
          setState(() {
            erros.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            erros.contains(kInvalidEmailError)) {
          setState(() {
            erros.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !erros.contains(kEmailNullError)) {
          setState(() {
            erros.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !erros.contains(kInvalidEmailError)) {
          setState(() {
            erros.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelStyle: TextStyle(color: kTextColor),
        hintStyle: TextStyle(color: kTextColor),
        labelText: 'Email',
        hintText: 'Digite seu email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icones/Mail.svg',
        ),
      ),
    );
  }
}
