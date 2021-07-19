import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import '../../bloc/Simulator.dart';

class Indicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width - 30;
    return Consumer<BlocSimulator>(
      builder: (BuildContext context, BlocSimulator bloc) {
        return Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Stack(
              children: [
                Container(
                  height: 20,
                  width: _width,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  height: 20,
                  width: (_width / 4) * (bloc.cPage + 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
