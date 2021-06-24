import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  double iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.black,
            size: this.iconSize,
          ),
          Icon(
            Icons.bookmark,
            color: Colors.black,
            size: this.iconSize,
          ),
          Icon(
            Icons.chat_bubble,
            color: Colors.black,
            size: this.iconSize,
          ),
        ],
      ),
    );
  }
}
