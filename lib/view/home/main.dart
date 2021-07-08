import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Text(
            'Escolha uma opção',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          CupertinoButton.filled(
            child: Text(' 1'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
