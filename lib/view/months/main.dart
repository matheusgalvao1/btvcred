import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';

import '../../components/Button.dart';
import '../../utility/Pointer.dart';

part 'Picker.dart';

class Months extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Quantas parcelas?',
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Picker(),
          ],
        ),
      ),
    );
  }
}
