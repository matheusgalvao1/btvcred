import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../bloc/Simulator.dart';
import '../../../components/Button.dart';
import '../../../utility/Locale.dart';
import '../simulator/main.dart';

part 'Picker.dart';

class Months extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: ListView(
        padding: EdgeInsets.only(top: 0, bottom: 30, right: 30, left: 30),
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      Locale.howManyMonths,
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
                    Locale.rollHint,
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
        ],
      ),
    );
  }
}
