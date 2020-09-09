import 'package:controle_financeiro/utils/colors.dart';
import 'package:controle_financeiro/widgets/style_widget.dart';
import 'package:flutter/material.dart';

class MyButtonContainerWidget extends Container {
  String titulo;
  Function onPressed;
  bool inverse;

  MyButtonContainerWidget({this.titulo, this.onPressed, this.inverse = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: this.inverse ? 0.0 : 5.0,
        borderRadius: BorderRadius.circular(8.0),
        color: this.inverse ? MyColor.branco_texto : MyColor.lilas,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            onPressed.call();
          },
          child: Text(titulo,
              textAlign: TextAlign.center,
              style: MyStyle.padrao()
                  .copyWith(fontSize: this.inverse ? 16 : 18, color: this.inverse ? MyColor.lilas : Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
      margin: const EdgeInsets.only(top: 35, left: 30.0, right: 30.0),
    );
  }
}
