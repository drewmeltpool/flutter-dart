import 'package:flutter/material.dart';
import 'menuList.dart';


class Menu extends Drawer {
  final List<String> menuList;

  Menu({this.menuList});

  @override
  Widget build(BuildContext context) {
    return (Drawer(
        child: MyMenu(
            menuList: this.menuList)));
  }
}