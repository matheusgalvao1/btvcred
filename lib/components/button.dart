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
        height: 70,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
