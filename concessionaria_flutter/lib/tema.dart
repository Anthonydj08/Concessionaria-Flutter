import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData tema() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kPrimaryColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color.fromARGB(255, 41, 45, 50),
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.white),
    centerTitle: true,
    textTheme: TextTheme(
      headline6: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}
