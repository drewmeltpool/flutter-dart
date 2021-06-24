import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/Page/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}


