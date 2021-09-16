import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import '../../../bloc/Simulator.dart';
import '../../../utility/Pointer.dart';
import '../type/main.dart';
import '../amount/main.dart';
import '../months/main.dart';
import '../result/main.dart';

import 'Indicator.dart';
part 'AppBar.dart';
part 'Fab.dart';

class Simulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocSimulator>(
      builder: (BuildContext context, BlocSimulator bloc) {
        return Scaffold(
          appBar: AppBarSimulator(bloc),
          // floatingActionButton: Fab(),
          // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          body: PageView(
            controller: bloc.pageController,
            physics: NeverScrollableScrollPhysics(),
            scrollBehavior: CupertinoScrollBehavior(),
            children: [
              Type(bloc),
              Amount(bloc),
              Months(),
              Result(),
            ],
          ),
        );
      },
    );
  }
}
