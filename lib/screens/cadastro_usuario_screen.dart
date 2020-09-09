import 'package:controle_financeiro/widgets/appbar_widgets.dart';
import 'package:controle_financeiro/widgets/container_button_widget.dart';
import 'package:controle_financeiro/widgets/container_textfield_widgets.dart';
import 'package:flutter/material.dart';

class CadastroUsuarioScreen extends StatefulWidget {
  @override
  _CadastroUsuarioScreenState createState() => _CadastroUsuarioScreenState();
}

class _CadastroUsuarioScreenState extends State<CadastroUsuarioScreen> {
  @override
  Widget build(BuildContext context) {
    Container containerNome = MyTextfieldContainerWidget(
      hint: "Seu nome completo",
    );

    Container containerEmail = MyTextfieldContainerWidget(
      hint: "Seu email",
    );

    Container containerSenha = MyTextfieldContainerWidget(
      hint: "Sua senha",
      isCampoSenha: true,
    );

    Container containerButtonCadastrar =
        MyButtonContainerWidget(titulo: "Cadastrar", onPressed: () {});

    return Scaffold(
      appBar: MyAppBarWidgets.padrao("Novo cadastro"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          containerNome,
          containerEmail,
          containerSenha,
          containerButtonCadastrar
        ],
      ),
    );
  }
}
