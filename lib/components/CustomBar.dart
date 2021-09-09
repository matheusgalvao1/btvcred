import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

class CustomBar {

  static Future<void> showAlert({
    @required String title,
    @required String message,
    @required BuildContext context,
    bool error = false,
  }) {
    return Flushbar<dynamic>(
      backgroundColor: Theme.of(context).colorScheme.primary,
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.GROUNDED,
      message: message,
      title: title,
    ).show(context);
  }
}
