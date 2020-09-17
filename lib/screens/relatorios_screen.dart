import 'package:controle_financeiro/utils/colors.dart';
import 'package:controle_financeiro/widgets/container_text_widget.dart';
import 'package:flutter/material.dart';

class RelatoriosScreen extends StatefulWidget {
  @override
  _RelatoriosScreenState createState() => _RelatoriosScreenState();
}

class _RelatoriosScreenState extends State<RelatoriosScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: MyTextContainerWidget(texto: "olá, RelatoriosScreen", corFonte: MyColor.texto_preto,),);
  }
}
