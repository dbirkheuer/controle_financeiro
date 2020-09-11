import 'package:controle_financeiro/negocio/alertas/Mensagem.dart';
import 'package:controle_financeiro/negocio/firebase/firebase_auth.dart';
import 'package:controle_financeiro/screens/login_screen.dart';
import 'package:controle_financeiro/widgets/appbar_widgets.dart';
import 'package:controle_financeiro/widgets/container_button_widget.dart';
import 'package:controle_financeiro/widgets/container_text_widget.dart';
import 'package:controle_financeiro/widgets/container_textfield_widgets.dart';
import 'package:flutter/material.dart';

class RecuperacaoSenhaScreen extends StatefulWidget {
  @override
  _RecuperacaoSenhaScreenState createState() => _RecuperacaoSenhaScreenState();
}

class _RecuperacaoSenhaScreenState extends State<RecuperacaoSenhaScreen> {
  FirebaseAuth auth = FirebaseAuth();

  @override
  Widget build(BuildContext context) {
    MyTextContainerWidget contDescricao = MyTextContainerWidget(
        texto:
            "Vou lhe ajudar a trocar a senha enviando a dica de como fazer a alteração "
            "para seu e-mail.\n\nQual o e-mail que você utiliza no app?");

    MyTextfieldContainerWidget contEmail =
        MyTextfieldContainerWidget(hint: "Digite seu e-mail");

    MyButtonContainerWidget contButtonEnviarEmail = MyButtonContainerWidget(
        titulo: "Enviar dica para este e-mail",
        onPressed: () {
          auth
              .recupararSenha(contEmail.getText())
              .then((value) => () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  })
              .catchError((error) => {Mensagem.exibirError(context, error)});
        });

    return Scaffold(
      appBar: MyAppBarWidgets.padrao("Trocar sua senha"),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              contDescricao,
              SizedBox(height: 20),
              contEmail,
              contButtonEnviarEmail,
            ],
          ),
        ],
      ),
    );
  }
}
