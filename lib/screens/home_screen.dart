import 'package:controle_financeiro/screens/cadastro_novo_controle_screen.dart';
import 'package:controle_financeiro/screens/controle_da_financa_screen.dart';
import 'package:controle_financeiro/screens/relatorios_screen.dart';
import 'package:controle_financeiro/utils/colors.dart';
import 'package:controle_financeiro/widgets/container_text_widget.dart';
import 'package:controle_financeiro/widgets/drawer_listtile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StatefulWidget homeScreen;
  String appBarTitle = "Controle Financeiro Familiar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: MyColor.lilas,
        title: Text(appBarTitle),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30),
                    MyTextContainerWidget(
                        texto: "Olá, amigo!",
                        corFonte: MyColor.branco_texto,
                        textAlign: TextAlign.center,
                        tamanhoFonte: 22),
                    MyTextContainerWidget(
                        texto: "Nome do usuário",
                        corFonte: MyColor.branco_texto,
                        textAlign: TextAlign.center,
                        tamanhoFonte: 14)
                  ]),
              decoration: BoxDecoration(
                color: MyColor.lilas,
              ),
            ),
            MyListTileWidget(
              titulo: "Início",
              subTitulo: "Veja seus relatórios",
              icons: Icons.home,
              aoClicar: () {
                setState(() {
                  homeScreen = RelatoriosScreen();
                  appBarTitle = "Meus relatórios";
                  Navigator.of(context).pop();
                });
              },
            ),
            MyListTileWidget(
              titulo: "Novo controle",
              subTitulo: "Crie um novo controle",
              icons: Icons.fiber_new,
              aoClicar: () {
                setState(() {
                  homeScreen = CadastroNovoControleScreen();
                  appBarTitle = "Criando meu novo controle";
                  Navigator.of(context).pop();
                });
              },
            ),
            MyListTileWidget(
              titulo: "Meus controles",
              subTitulo: "Veja todos seu controles",
              icons: Icons.list,
              aoClicar: () {
                setState(() {
                  appBarTitle = "Meus controles";
                  homeScreen = ControleFinanca();
                  Navigator.of(context).pop();
                });
              },
            ),
            MyListTileWidget(
              titulo: "Desconectar",
              subTitulo: "Desconecte sua conta do App",
              icons: Icons.cloud_off,
              aoClicar: () {
                setState(() {});
              },
            ),
            MyListTileWidget(
              titulo: "Sair",
              subTitulo: "Sair do App",
              icons: Icons.keyboard_return,
              aoClicar: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
      body: homeScreen,
    );
  }
}
