import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({this.onTap, this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      child: Container(
        constraints: BoxConstraints(minHeight: 70),
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width*.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Center(
            child: text != null
                ? Text(
                    text,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  )
                : null),
      ),
    );
  }
}
