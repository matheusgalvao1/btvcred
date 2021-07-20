import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

import '../../bloc/Simulator.dart';
import '../../components/Button.dart';
import '../../components/ButtonOutlined.dart';

part 'Modal.dart';

class Type extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyButton(
              text: 'INSS',
              width: 100,
              height: 100,
            ),
            SizedBox(width: 20),
            MyButton(
              text: 'Funcionário\nPúblico',
              //width: 150,
              height: 100,
              onTap: () => Modal.showModal(context),
            ),
          ],
        ),
      ),
    );
  }
}
