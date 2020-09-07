import 'package:controle_financeiro/utils/colors.dart';
import 'package:flutter/material.dart';

class MyTextWidgets {
  static Container padrao(String texto) {
    return Container(
      child: Text(
        texto,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 18.0,
            color: MyColor.lilas,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      margin: const EdgeInsets.only(left: 30.0, right: 30.0),
    );
  }
}
