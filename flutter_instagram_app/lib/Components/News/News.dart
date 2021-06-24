import 'NewsItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Posts extends StatelessWidget {
  final List<String> imagePaths;
  

  Posts({this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (this.imagePaths.length * 330).toDouble(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: this
            .imagePaths
            .map((e) => Post(
          imagePath: e,
        ))
            .toList(),
      ),
    );
  }
}