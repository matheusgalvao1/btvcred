import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';

part 'Picker.dart';

class Months extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(30),
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Quantas parcelas?',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Picker(),
          ],
        ),
      ),
    );
  }
}
