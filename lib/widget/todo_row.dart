import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoRow extends StatelessWidget {
  final String title;

  const ToDoRow(
      {Key? key,
      required this.title,
      required bool isChecked,
      required String image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (bool? value) {},
        ),
        Container(
          margin: const EdgeInsets.all(12.0),
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            // image: DecorationImage(
            //   image: AssetImage('assets/bg_header.png'),
            //   fit: BoxFit.cover,
            // ),
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(
              color: Colors.white,
              width: 4.0,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 4.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
            child: Text(
              (title),
              style: const TextStyle(fontSize: 24),
            ))
      ],
    );
  }
}