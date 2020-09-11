import 'package:controle_financeiro/widgets/container_text_widget.dart';
import 'package:flutter/material.dart';

showOkAlertDialog(BuildContext context, String titulo, String texto) {
  // configura o button
  Widget okButton = FlatButton(
    child: MyTextContainerWidget(
      texto: "Tá bom",
      tamanhoFonte: 16,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: MyTextContainerWidget(
      texto: titulo,
      textAlign: TextAlign.left,
      tamanhoFonte: 18,
    ),
    content: MyTextContainerWidget(
      texto: texto,
      tamanhoFonte: 16,
    ),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

showConfirmAlertDialog(BuildContext context) {
  Widget cancelaButton = FlatButton(
    child: Text("Cancelar"),
    onPressed: () {},
  );
  Widget continuaButton = FlatButton(
    child: Text("Continar"),
    onPressed: () {},
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Deseja continuar aprendendo Flutter ?"),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );
  //exibe o diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
