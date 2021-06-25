import 'package:flutter/material.dart';
import '../Components/Goods/GoodList.dart';

class Counter extends StatelessWidget {
  final amount;

  Counter({@required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(
        backgroundColor: Colors.amber,
        child: Text(
          '$amount',
          style: TextStyle(color: Colors.white),
        ),
        radius: 20,
      )
    ]);
  }
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: GoodPage(),
    );
  }
}

class GoodPage extends StatefulWidget {
  GoodPage({Key key}) : super(key: key);

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<GoodPage> {
  int _counter = 0;

  void addToCart() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Counter(amount: _counter)),
        ],
      ),
      body: ListView(children: [
        GoodList(
          imagePaths: [
            'assets/audi.jpg',
            'assets/bentley.jpg',
            'assets/bmw.jpg',
            'assets/buick.jpg',
            'assets/chevrolet.jpg',
            'assets/hyundai.jpg',
            'assets/image.jpg',
            'assets/infiniti.jpg',
            'assets/jeep.jpg',
            'assets/lexus.jpg',
            'assets/maserati.jpg',
            'assets/mitsubish.jpg',
          ],
          func: addToCart,
        )
      ]),
    );
  }
}
