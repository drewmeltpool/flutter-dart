import 'package:flutter/material.dart';

class MenuPoint extends StatelessWidget {
  final String text;

  MenuPoint({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Center(
          child: Text(
              this.text,
              style: TextStyle(color: Colors.white, fontSize: 24.0),
          ) 
        )
      ),
    );
  }
}