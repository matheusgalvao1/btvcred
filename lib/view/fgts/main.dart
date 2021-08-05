import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import '../../bloc/FgtsSimulator.dart';
import 'balance/main.dart';

class Fgts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocFgtsSimulator>(
      builder: (BuildContext context, BlocFgtsSimulator bloc) {
        return Scaffold(
          //appBar: AppBarSimulator(bloc),
          //floatingActionButton: Fab(),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          body: PageView(
            controller: bloc.pageController,
            physics: NeverScrollableScrollPhysics(),
            scrollBehavior: CupertinoScrollBehavior(),
            children: [
              Balance(bloc),
            ],
          ),
        );
      },
    );
  }
}
