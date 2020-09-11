import 'package:controle_financeiro/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class MyTextContainerWidget extends Container {
  String texto;
  double tamanhoFonte;
  Color corFonte;
  FontWeight fontWeight;
  TextAlign textAlign;

  MyTextContainerWidget(
      {this.texto,
      this.tamanhoFonte = 18,
      this.corFonte = MyColor.lilas,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.texto,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: this.tamanhoFonte,
            color: this.corFonte,
            fontWeight: fontWeight),
        textAlign: this.textAlign,
      ),
      margin: const EdgeInsets.only(left: 30.0, right: 30.0),
    );
  }
}
