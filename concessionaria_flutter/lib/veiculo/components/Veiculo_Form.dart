import 'package:flutter/material.dart';

Widget textField(texto1, textController,minimoDeCaracteresPermitidos,textoDeErroDeValidacao,tipoDeInput) {
  return new Theme(
    data: new ThemeData(
      primaryColor: Color.fromRGBO(0, 184, 160, 1),
      primaryColorDark: Color.fromRGBO(0, 133, 116, 1),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: new TextFormField(
        key: const ValueKey("txtFieldCadastrarVeiculo"),
        controller: textController,
        validator: (String? value){
          var vl = value?.length; 
          if(vl !=null){
            if(vl < minimoDeCaracteresPermitidos){
              return textoDeErroDeValidacao;
            }
            }
          else
            return null;
        },
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          labelText: texto1,
          labelStyle: TextStyle(color: Colors.white),
          // errorText: errorStr,
          prefixIcon: const Icon(
            Icons.car_rental,
            color: Colors.white,
          ),
          border: new OutlineInputBorder(
            borderSide: new BorderSide(width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(0, 133, 116, 1)),
          ),
        ),
        keyboardType: tipoDeInput,
      ),
    ),
  );
}
