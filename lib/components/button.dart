import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    this.onTap,
    //this.color,
  });

  final Function onTap;
  //final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      child: Container(
        constraints: BoxConstraints(minHeight: 30),
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue,
        ),
      ),
    );
  }
}
