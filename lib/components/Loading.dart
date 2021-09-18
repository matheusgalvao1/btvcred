
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

class MyLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              'lib/assets/images/btv_cont.svg',
              height: 60,
            ),
          ),
          Center(
            child: NutsActivityIndicator(
              radius: 75,
              activeColor: Theme.of(context).colorScheme.primary,
              inactiveColor:
                  Theme.of(context).colorScheme.primary.withOpacity(.5),
              tickCount: 15,
              endRatio: .7,
              startRatio: 0.65,
            ),
          ),
        ],
      ),
    );
  }
}
