import 'package:flutter/material.dart';

class CustomSafe extends StatelessWidget {
  const CustomSafe({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      top: false,
      child: child,
    );
  }
}
