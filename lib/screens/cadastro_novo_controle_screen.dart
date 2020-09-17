import 'package:controle_financeiro/widgets/container_button_widget.dart';
import 'package:controle_financeiro/widgets/container_text_widget.dart';
import 'package:controle_financeiro/widgets/container_textfield_widgets.dart';
import 'package:flutter/material.dart';

class CadastroNovoControleScreen extends StatefulWidget {
  @override
  _CadastroNovoControleScreenState createState() =>
      _CadastroNovoControleScreenState();
}

class _CadastroNovoControleScreenState
    extends State<CadastroNovoControleScreen> {
  @override
  Widget build(BuildContext context) {
    MyTextfieldContainerWidget containerNome = MyTextfieldContainerWidget(
      hint: "Qual vai ser o nome?",
    );

    MyButtonContainerWidget containerButtonCadastrar =
        MyButtonContainerWidget(titulo: "Criar", onPressed: () {});

    return Scaffold(
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
                      "Para cria rum novo controle só vamos precisar de um nome para ele!"),
              SizedBox(height: 20),
              containerNome,
              containerButtonCadastrar,
            ],
          ),
        ],
      ),
    );
  }
}
