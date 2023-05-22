import 'package:flutter/material.dart';

const Color primary = Color(0xffa63a3a);
const Color secundary = Color(0xffa63a3a);
const Color gris = Color(0xffa63a3a);
const Color cafe = Color(0xffA1674A);
const Color rosa = Color(0xffBA6E6E);
const Color azul = Color(0xff3A6186);


ThemeData miTema(BuildContext con){
  return ThemeData(
    primaryColor : primary,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.indigo,
    ).copyWith(
      secondary: Colors.pink,
    ),
  );
}
