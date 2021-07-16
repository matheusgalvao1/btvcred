import 'package:flutter/material.dart';

import '../../components/Button.dart';

class Type extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyButton(text: 'INSS'),
            SizedBox(height: 20),
            MyButton(text: 'Funcionário Público'),
          ],
        ),
      ),
    );
  }
}