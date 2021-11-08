import 'package:flutter/material.dart';

class Menu {
  String title;
  IconData iconData;
  bool isSelected;
  Menu({
    required this.title,
    required this.iconData,
    this.isSelected = false,
  });

  @override
  String toString() =>
      'Menu(title: $title, iconData: $iconData, isSelected: $isSelected)';
}

class MenuList {
  List<Menu> items;
  MenuList({
    required this.items,
  });
  MenuList selectIndex(int index) {
    items.forEach((element) {
      element.isSelected = false;
    });
    items[index].isSelected = true;
    return this;
  }

  @override
  String toString() {
    String finalStr = '';
    items.forEach((element) {
      finalStr += element.toString() + '/n';
    });
    return finalStr;
  }
}
