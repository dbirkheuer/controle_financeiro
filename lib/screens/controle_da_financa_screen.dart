import 'package:carousel_slider/carousel_slider.dart';
import 'package:controle_financeiro/widgets/appbar_widgets.dart';
import 'package:controle_financeiro/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ControleFinanca extends StatefulWidget {
  @override
  _ControleFinancaState createState() => _ControleFinancaState();
}

class _ControleFinancaState extends State<ControleFinanca> {
  @override
  Widget build(BuildContext context) {
    List<String> list = ["Set/20", "Out/20", "Nov/20", "Dez/20", "Jan/21"];
    return Scaffold(
      appBar: MyAppBarWidgets.padraoComActions("Controle", <Widget>[
        // action button
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
      ]),
      body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: 80.0,
                child: CarouselSlider(
                  options: CarouselOptions(),
                  items: list
                      .map((item) => Container(
                            child: Center(
                                child: MyTextWidgets.padrao(item.toString())),
                            color: Colors.white,
                          ))
                      .toList(),
                )),
          ]),
    );
  }
}
