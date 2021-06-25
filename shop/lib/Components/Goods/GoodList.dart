import 'package:flutter/material.dart';
import 'GoodItem.dart';

class GoodList extends StatelessWidget {
  final List<String> imagePaths;
  final Function func;
  GoodList({this.imagePaths, this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: this
            .imagePaths
            .map((e) => GoodItem(
          image: e,
          func: this.func,
        ))
            .toList(),
      ),
    );
  }
}