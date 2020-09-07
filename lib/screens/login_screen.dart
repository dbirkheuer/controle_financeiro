import 'package:controle_financeiro/screens/home_screen.dart';
import 'package:controle_financeiro/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextStyle style = TextStyle(
      fontFamily: 'Montserrat', fontSize: 20.0, color: MyColor.lilas);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100),
                Container(
                  child: Text(
                    "Controle Financeiro Familiar",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        color: MyColor.lilas,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
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
                Container(
                  child: Text(
                    "Tenha em mãos toda suas rotina financeira!",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        color: MyColor.lilas,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                ),
                SizedBox(height: 45.0),
                Container(
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    obscureText: false,
                    style: style,
                    cursorColor: MyColor.lilas,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(color: MyColor.lilas, width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      hintText: 'Digite seu email',
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Container(
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    obscureText: true,
                    style: style,
                    cursorColor: MyColor.lilas,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(color: MyColor.lilas, width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      hintText: 'Digite sua senha',
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8.0),
                    color: MyColor.lilas,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Text("Entrar",
                          textAlign: TextAlign.center,
                          style: style.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  margin:
                      const EdgeInsets.only(top: 35, left: 30.0, right: 30.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
