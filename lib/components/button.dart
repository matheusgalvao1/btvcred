import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    this.onTap,
    this.text,
    this.width,
    this.height,
  });

  final Function onTap;
  final String text;

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //constraints: BoxConstraints(minHeight: 70, maxHeight: 100,maxWidth: 200),
        height: height,
        width: width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Center(
            child: text != null
                ? Text(
                    text,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                  )
                : null),
      ),
    );
  }
}
