import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function func;
  final String text;
  Button({Key key, this.text, this.func}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.func();
      },
      child: Container(
          padding: EdgeInsets.only(top: 10, left: 45, right: 45, bottom: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Container(
            child: Text(this.text,
                style: TextStyle(
                  fontSize: 24,
                )),
          )),
    );
  }
}
