import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

import '../../bloc/Router.dart';

class Router extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocRouter>(
        builder: (BuildContext context, BlocRouter bloc) {
      return Material(
        color: Theme.of(context).colorScheme.onSecondary,
        child: SplashScreen.callback(
          name: 'lib/assets/animations/btv.flr',
          onSuccess: (dynamic e) {
            OneContext().pushNamedAndRemoveUntil(
              '/intro',//bloc.navigator,
              (_) => false,
            );
          },

          backgroundColor: Theme.of(context).colorScheme.background,
          onError: (dynamic error, dynamic stacktrace) {},
          until: () => bloc.init(),
          startAnimation: 'btv',
        ),
      );
    });
  }
}
