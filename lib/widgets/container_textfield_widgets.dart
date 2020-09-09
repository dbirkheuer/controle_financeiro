import 'package:controle_financeiro/utils/colors.dart';
import 'package:controle_financeiro/widgets/style_widget.dart';
import 'package:flutter/material.dart';

class MyTextfieldContainerWidget extends Container {
  final myController = TextEditingController();
  TextField textfield;
  String hint;
  bool isCampoSenha;

  MyTextfieldContainerWidget({this.hint, this.isCampoSenha});

  String getText() {
    return myController.text;
  }

  @override
  Widget build(BuildContext context) {
    textfield = TextField(
      controller: myController,
      obscureText: this.isCampoSenha,
      style: MyStyle.padrao(),
      cursorColor: MyColor.lilas,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: MyColor.lilas, width: 3.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
        ),
        hintText: hint,
      ),
    );

    return Container(
        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: textfield);
  }
}
