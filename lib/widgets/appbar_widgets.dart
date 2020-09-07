import 'package:controle_financeiro/utils/colors.dart';
import 'package:flutter/material.dart';

class MyAppBarWidgets {
  static AppBar padrao(String titulo) {
    return AppBar(
      elevation: 8,
      backgroundColor: MyColor.lilas,
      title: Text("Criando seu controle Financeiro"),
    );
  }

  static AppBar padraoComActions(String titulo, List<Widget> actions) {
    return AppBar(
      elevation: 8,
      actions: actions,
      backgroundColor: MyColor.lilas,
      title: Text("Criando seu controle Financeiro"),
    );
  }
}
