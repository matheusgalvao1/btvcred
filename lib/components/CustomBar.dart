//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

class CustomBar {
  // static Future<void> showNotification(RemoteNotification notification) {
  //   return Flushbar<dynamic>(
  //     backgroundColor: OneContext().theme.primaryColorDark.withOpacity(.75),
  //     barBlur: 10,
  //     borderRadius: 10,
  //     duration: const Duration(seconds: 3),
  //     flushbarPosition: FlushbarPosition.TOP,
  //     flushbarStyle: FlushbarStyle.FLOATING,
  //     margin: const EdgeInsets.all(5),
  //     message: notification.title + '\n' + notification.body,
  //   ).show(OneContext().context);
  // }

  static Future<void> showAlert({
    @required String title,
    @required String message,
    bool error = false,
  }) {
    return Flushbar<dynamic>(
      backgroundColor: error
          ? OneContext().theme.primaryColorDark
          : OneContext().theme.indicatorColor,
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.GROUNDED,
      message: message,
      title: title,
    ).show(OneContext().context);
  }
}
