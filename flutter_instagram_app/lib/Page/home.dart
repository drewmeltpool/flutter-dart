import 'package:flutter/material.dart';
import '../Components/Menu/menu.dart';
import '../Components/Story/StoryList.dart';
import '../Components/News/News.dart';

class HomePage extends StatelessWidget {
  
  HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram App",
            style: TextStyle(
              color: Colors.white,
            )),
      ),
       body:  ListView(
        children: [
          StoryList(
            images: [
              'image/audi.jpg',
              'image/bentley.jpg',
              'image/bmw.jpg',
              'image/buick.jpg',
              'image/chevrolet.jpg',
              'image/hyundai.jpg',
              'image/image.jpg',
              'image/infiniti.jpg',
              'image/jeep.jpg',
              'image/lexus.jpg',
              'image/maserati.jpg',
              'image/mitsubish.jpg',
            ],
          ),
          Posts(
            imagePaths: [
              'image/audi.jpg',
              'image/bentley.jpg',
              'image/bmw.jpg',
              'image/buick.jpg',
              'image/chevrolet.jpg',
              'image/hyundai.jpg',
              'image/image.jpg',
              'image/infiniti.jpg',
              'image/jeep.jpg',
              'image/lexus.jpg',
              'image/maserati.jpg',
              'image/mitsubish.jpg',         
              ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add),       
        onPressed: () => {},
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(color: Colors.black54),
        ),
      ),
      drawer: Menu(
        menuList: ['Profile', 'Settings', 'Log out'],
      ),
    );
  }
}
