import 'package:flutter/material.dart';

class Months extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'teste',
          style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blue),
        ),
      ),
    );
  }
}