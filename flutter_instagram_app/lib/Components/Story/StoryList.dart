import 'package:flutter/material.dart';
import 'StoryItem.dart';

class StoryList extends StatelessWidget {
  final List<String> images;

  StoryList({this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        height: 75,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: this
                          .images
                          .map((e) => StoryItem(
                        image: e,
                      ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}