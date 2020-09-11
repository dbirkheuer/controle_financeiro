import 'package:controle_financeiro/widgets/alertDialog_widgets.dart';
import 'package:flutter/cupertino.dart';

class Mensagem {
  static void exibirMensagem(BuildContext context, String mensagem) {
    showOkAlertDialog(context, "Atenção", mensagem);
  }

  static void exibirError(BuildContext context, String error) {
    showOkAlertDialog(context, "Atenção", error);
  }
}
