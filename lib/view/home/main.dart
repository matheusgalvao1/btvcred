import 'package:btvcred/utility/CustomScrollable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import '../../bloc/Simulator.dart';
import '../../view/home/Indicator.dart';
import '../amount/main.dart';
import '../months/main.dart';
import '../result/main.dart';
import '../type/main.dart';

part 'AppBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocSimulator>(
      builder: (BuildContext context, BlocSimulator bloc) {
        return Scaffold(
          appBar: AppBarSimulator(bloc),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: bloc.cPage > 0
                ? FloatingActionButton(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Icon(
                      Icons.arrow_back,
                      size: 35,
                      color: Colors
                          .white, //Theme.of(context).colorScheme.onSecondary,
                    ),
                    onPressed: () {
                      bloc.previousPage();
                    },
                  )
                : null,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
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
