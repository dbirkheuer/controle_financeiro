import 'package:controle_financeiro/utils/colors.dart';
import 'package:controle_financeiro/widgets/style_widget.dart';
import 'package:flutter/material.dart';

class MyButtonWidgets {
  static Container padrao(
      BuildContext context, String texto, Function function) {
    return Container(
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(8.0),
        color: MyColor.lilas,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            function.call();
          },
          child: Text(texto,
              textAlign: TextAlign.center,
              style: MyStyle.padrao()
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
      margin: const EdgeInsets.only(top: 35, left: 30.0, right: 30.0),
    );
  }
}
