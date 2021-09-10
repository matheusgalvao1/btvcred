import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utility/Pointer.dart';

class BlocContact extends BlocBase {
  String phoneNumber = config.app.whatsApp;
  String message = "teste";

  void sendWhatsApp() async {
    var whatsAppURl = "whatsapp://send?phone=" + formatPhone() + "text=$message";

    await launch(whatsAppURl);

  }

  void callPhone() {
    launch("tel://$phoneNumber");
  }

  String formatPhone() {
    return '55'+ phoneNumber.replaceAll(' ', '').replaceAll('-', '');
  }
}
