import 'package:controle_financeiro/negocio/alertas/Mensagem.dart';
import 'package:controle_financeiro/negocio/firebase/firebase_auth.dart';
import 'package:controle_financeiro/screens/home_screen.dart';
import 'package:controle_financeiro/widgets/appbar_widgets.dart';
import 'package:controle_financeiro/widgets/container_button_widget.dart';
import 'package:controle_financeiro/widgets/container_text_widget.dart';
import 'package:controle_financeiro/widgets/container_textfield_widgets.dart';
import 'package:flutter/material.dart';

class CadastroUsuarioScreen extends StatefulWidget {
  @override
  _CadastroUsuarioScreenState createState() => _CadastroUsuarioScreenState();
}

class _CadastroUsuarioScreenState extends State<CadastroUsuarioScreen> {
  FirebaseAuth auth = FirebaseAuth();

  @override
  Widget build(BuildContext context) {
    MyTextfieldContainerWidget containerNome = MyTextfieldContainerWidget(
      hint: "Seu nome completo",
    );

    MyTextfieldContainerWidget containerEmail = MyTextfieldContainerWidget(
      hint: "Seu email",
    );

    MyTextfieldContainerWidget containerSenha = MyTextfieldContainerWidget(
      hint: "Sua senha",
      isCampoSenha: true,
    );

    MyButtonContainerWidget containerButtonCadastrar = MyButtonContainerWidget(
        titulo: "Cadastrar",
        onPressed: () {
          auth
              .cadastrarNovoUsuario(containerNome.getText(),
                  containerEmail.getText(), containerSenha.getText())
              .then((value) => () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
              .catchError((error) => {Mensagem.exibirError(context, error)});
        });

    return Scaffold(
      appBar: MyAppBarWidgets.padrao("Criando seu acesso"),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              MyTextContainerWidget(
                  texto:
                      "Só vou precisar de três informações para criar seu cadastro."),
              SizedBox(height: 20),
              containerNome,
              SizedBox(height: 20),
              containerEmail,
              SizedBox(height: 20),
              containerSenha,
              SizedBox(height: 20),
              containerButtonCadastrar,
            ],
          ),
        ],
      ),
    );
  }
}
