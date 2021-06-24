import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../PanelBar/Bar.dart';

class Post extends StatelessWidget {
  final String imagePath;

  Post({this.imagePath});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Container(
            decoration: new BoxDecoration(color: Colors.white),
            height: 300,
            child: Column(children: [
              Expanded(
                child: Image.asset(this.imagePath, fit: BoxFit.cover),
              ),
              Panel(),
            ])));
  }
}
