import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todoa_second/model/item_data.dart';
import 'package:flutter_todoa_second/widget/todo_row.dart';

class HomePage extends StatelessWidget {
  final List items;

  HomePage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDoa'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              ItemData item = items[index];
              return ToDoRow(
                isChecked: item.isChecked,
                title: item.title,
                image: item.image,
              );
            }),
      ),
    );
  }
}
