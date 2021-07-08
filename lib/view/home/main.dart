import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../bloc/Simulator.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocSimulator>(
      builder: (BuildContext context, BlocSimulator bloc) {
        return Scaffold(
          body: PageView(
            controller: bloc.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [],
          ),
        );
      },
    );
  }
}
