import 'package:controle_financeiro/screens/controle_da_financa_screen.dart';
import 'package:controle_financeiro/utils/colors.dart';
import 'package:controle_financeiro/widgets/button_widgets.dart';
import 'package:controle_financeiro/widgets/text_widget.dart';
import 'package:controle_financeiro/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class CadastroFinanca extends StatefulWidget {
  @override
  _CadastroFinancaState createState() => _CadastroFinancaState();
}

class _CadastroFinancaState extends State<CadastroFinanca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: MyColor.lilas,
        title: Text("Criando seu controle Financeiro"),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              MyTextWidgets.padrao(
                  "Para começar vamos precisar de um nome para seu controle Financeiro."),
              SizedBox(
                height: 18,
              ),
              MyTextFieldWidgets.padrao("Digite aqui o nome"),
              SizedBox(
                height: 18,
              ),
              MyButtonWidgets.padrao(context, "Criar", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ControleFinanca()));
              })
            ]),
      ),
    );
  }
}
