import 'package:flutter/material.dart';
import 'menuItem.dart';

class MyMenu extends StatelessWidget {
  final List<String> menuList;

  MyMenu({this.menuList});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(top: 100, bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: this.menuList.map((e) => MenuPoint(text: e)).toList(),
        )
      )
    );
  }
}