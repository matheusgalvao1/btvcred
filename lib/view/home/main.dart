import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import '../../bloc/Simulator.dart';
import '../../utility/Pointer.dart';
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
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.orange,
            child: Icon(Icons.skip_next),
            onPressed: () {
              bloc.nextPage();
            }
          ),
          body: PageView(
            controller: bloc.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Type(),
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
