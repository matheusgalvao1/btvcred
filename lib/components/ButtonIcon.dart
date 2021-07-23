import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    this.height,
    this.icon,
    this.onTap,
    this.text,
    this.width,
  });

  final Function onTap;
  final IconData icon;
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
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 3,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Icon(
              icon,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
