import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String image;

  StoryItem({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, 
      height: 100,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(this.image)
        )
      )
    );
  }
}