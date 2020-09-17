import 'package:controle_financeiro/utils/colors.dart';
import 'package:controle_financeiro/widgets/container_text_widget.dart';
import 'package:flutter/material.dart';

class MyListTileWidget extends ListTile {
  String titulo;
  String subTitulo;
  IconData icons;
  Function aoClicar;

  MyListTileWidget(
      {this.titulo, this.subTitulo = "", this.icons, this.aoClicar});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: MyTextContainerWidget(
        texto: this.titulo,
        fontWeight: FontWeight.bold,
        tamanhoFonte: 16,
        corFonte: MyColor.lilas,
      ),
      subtitle: MyTextContainerWidget(
        texto: this.subTitulo,
        fontWeight: FontWeight.normal,
        tamanhoFonte: 12,
        corFonte: MyColor.texto_cinza,
      ),
      leading: Icon(this.icons, color: MyColor.lilas,),
      onTap: () {
        this.aoClicar.call();
      },
    );
  }
}
