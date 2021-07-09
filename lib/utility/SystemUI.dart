import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemUI extends StatelessWidget {
  const SystemUI({
    @required this.child,
    this.darkMode = false,
  });

  final bool darkMode;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: darkMode
          ? SystemUiOverlayStyle(
              statusBarBrightness:
                  Theme.of(context).brightness == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark,
              statusBarIconBrightness:
                  Theme.of(context).brightness == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark,
              systemNavigationBarColor: Theme.of(context).unselectedWidgetColor,
              systemNavigationBarDividerColor: Theme.of(context).primaryColor,
              systemNavigationBarIconBrightness:
                  Theme.of(context).brightness == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark,
            )
          : SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarColor: Theme.of(context).unselectedWidgetColor,
              systemNavigationBarDividerColor: Theme.of(context).primaryColor,
              systemNavigationBarIconBrightness:
                  Theme.of(context).brightness == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark,
            ),
      child: child,
    );
  }
}
