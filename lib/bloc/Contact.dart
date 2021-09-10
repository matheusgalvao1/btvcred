import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utility/Pointer.dart';

class BlocContact extends BlocBase {
  String phoneNumber = config.app.whatsApp;
  String message = "teste";

  void sendWhatsApp() async {
    var whatsAppURl =
        "whatsapp://send?phone=" + formatPhone() + "text=$message";

    await launch(whatsAppURl);
  }

  void callPhone() {
    launch("tel://$phoneNumber");
  }

  String formatPhone() {
    return '55' + phoneNumber.replaceAll(' ', '').replaceAll('-', '');
  }

  Future<void> openMap() async {
      String query = Uri.encodeComponent('R. Mal. Deodoro da Fonseca, 17 - Centro, Ponta Grossa - PR, 84010-030');
      String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";

      await launch(googleUrl);

  }
}
