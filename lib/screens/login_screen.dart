import 'package:controle_financeiro/screens/home_screen.dart';
import 'package:controle_financeiro/utils/colors.dart';
import 'package:controle_financeiro/widgets/container_button_widget.dart';
import 'package:controle_financeiro/widgets/container_text_widget.dart';
import 'package:controle_financeiro/widgets/container_textfield_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextStyle style =
      TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: MyColor.lilas);

  @override
  Widget build(BuildContext context) {
    Container textfieldContainerEmail = MyTextfieldContainerWidget(
      hint: "Digite seu email",
      isCampoSenha: false,
    );

    Container textfieldContainerSenha = MyTextfieldContainerWidget(
      hint: "Digite sua senha",
      isCampoSenha: true,
    );

    return Scaffold(
      backgroundColor: MyColor.branco_texto,
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100),
                MyTextContainerWidget(
                  texto: "Controle Financeiro Familiar",
                  fontWeight: FontWeight.bold,
                  tamanhoFonte: 25.0,
                ),
                SizedBox(height: 50),
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 12.0),
                MyTextContainerWidget(
                  texto:
                      "Tenha em mãos toda suas rotina financeira. Tudo é salvo na nuvem. Recupere quando quiser!",
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 45.0),
                textfieldContainerEmail,
                SizedBox(height: 15.0),
                textfieldContainerSenha,
                MyButtonContainerWidget(
                  titulo: "Entrar",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                MyButtonContainerWidget(
                  inverse: true,
                  titulo: "Não tem conta? Crie uma aqui!",
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
