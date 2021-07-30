import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../components/Button.dart';
import '../../../utility/Pointer.dart';

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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'lib/assets/icons/lightbulb.svg',
                  color: Theme.of(context).colorScheme.primary,
                  height: 40,
                ),
                SizedBox(width: 5),
                Text(
                  'Gire a roleta para escolher',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Picker(),
          ],
        ),
      ),
    );
  }
}
