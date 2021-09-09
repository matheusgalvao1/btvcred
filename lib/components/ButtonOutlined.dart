import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  const ButtonOutlined({
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
      highlightColor: Colors.transparent,
      child: Container(
        //constraints: BoxConstraints(minHeight: 70, maxHeight: 100,maxWidth: 200),
        height: height,
        width: width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 3,
          ),
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
