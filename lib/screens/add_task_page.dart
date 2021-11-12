import 'package:flutter/material.dart';
import 'package:flutter_todoa_second/widget/rounded_button.dart';

class AddTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Add',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {},
          ),
          const SizedBox(
            height: 20,
          ),
          RoundedButton(
            title: 'Add',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
