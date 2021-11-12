import 'package:flutter/material.dart';
import 'package:flutter_todoa_second/screens/home_page.dart';

import 'model/item_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<ItemData> items = [
    ItemData(isChecked: true, title: 'Math', image: 'assets/images/avatar.png'),
    ItemData(
        isChecked: true,
        title: 'Architecture',
        image: 'assets/images/avatar.png'),
    ItemData(
        isChecked: true, title: 'Biology', image: 'assets/images/avatar.png'),
    ItemData(
        isChecked: true, title: 'Flutter', image: 'assets/images/avatar.png'),
    ItemData(
        isChecked: true,
        title: 'Artificial Intelligences',
        image: 'assets/images/avatar.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        items: items,
      ),
    );
  }
}
