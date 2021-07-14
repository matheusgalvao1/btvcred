import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:btvcred/components/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../bloc/Simulator.dart';

part 'Amount.dart';
part 'Months.dart';
part 'Type.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocSimulator>(
      builder: (BuildContext context, BlocSimulator bloc) {
        return Scaffold(
          body: PageView(
            controller: bloc.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Type(),
            ],
          ),
        );
      },
    );
  }
}
