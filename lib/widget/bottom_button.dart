import 'package:flutter/material.dart';

const kLargeButtonTextStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white);

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.title});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: 90.0,
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            )),
      ),
    );
  }
}
