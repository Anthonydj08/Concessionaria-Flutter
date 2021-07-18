import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromRGBO(0, 133, 116, 1);
const kPrimaryLightColor = Color.fromRGBO(0, 184, 160, 1);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color.fromRGBO(0, 133, 116, 1), Color.fromRGBO(0, 184, 160, 1)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFFFFFFFF);

const kAnimationDuration = Duration(milliseconds: 200);


// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Por favor insira seu email";
const String kInvalidEmailError = "Por favor insira um email válido";
const String kPassNullError = "Por favor insira sua senha";
const String kShortPassError = "Senha muito curta";
const String kMatchPassError = "Senhas diferentes";
const String kNamelNullError = "Por favor insira seu nome";
const String kPhoneNumberNullError = "Por favor insira seu telefone";
const String kAddressNullError = "Por favor insira seu endereco";