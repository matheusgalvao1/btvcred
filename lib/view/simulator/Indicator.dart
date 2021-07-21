import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../bloc/Simulator.dart';

class Indicator extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width - 75;
    return Consumer<BlocSimulator>(
      builder: (BuildContext context, BlocSimulator bloc) {
        return Padding(
          padding: EdgeInsets.all(15),
          child: LinearPercentIndicator(
            trailing: SvgPicture.asset(
              'lib/assets/icons/cash1.svg',
              color: Theme.of(context).colorScheme.primary,
              height: 45,
            ),
            width: _width,
            animation: true,
            animateFromLastPercent: true,
            lineHeight: 15,
            animationDuration: 500,
            percent: bloc.percent,
            progressColor: Theme.of(context).colorScheme.primary,
            linearStrokeCap: LinearStrokeCap.roundAll,
          ),
        );
      },
    );
  }
}
