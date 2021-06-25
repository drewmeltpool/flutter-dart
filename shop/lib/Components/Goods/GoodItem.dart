import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Button/Button.dart';

class GoodItem extends StatelessWidget {
  final String image;
  final Function func;

  GoodItem({this.image, this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Column(children: [
          Expanded(
            child: Image(
              image: AssetImage(this.image),
            ),
          ),
          Container(
            padding: EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              child: Button(func: this.func, text: 'Buy'),
            ),
          ),
        ]));
  }
}
