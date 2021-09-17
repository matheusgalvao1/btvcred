import 'package:flutter/material.dart';

import 'package:btvcred/components/CustomBar.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utility/Pointer.dart';

class BlocContact extends BlocBase {
  String phoneNumber = config.app.whatsApp;
  String message = "*Simulação de empréstimo*\nValor: ";

  void sendWhatsApp(BuildContext context) async {
    var whatsAppUrl = "whatsapp://send?phone=" + formatPhone() + "&text=" + formatMessage();
    //if (await canLaunch(whatsAppUrl)) {
      await launch(whatsAppUrl);
    //} else {
    //   CustomBar.showAlert(
    //       title: 'Ops!',
    //       message: 'Verifique se você possui o WhatsApp instalado',
    //       context: context);
    // }
  }

  void openWhatsApp() async {
    var whatsAppURl = "whatsapp://send?phone=" + formatPhone();

    await launch(whatsAppURl);
  }

  void callPhone() {
    launch("tel://$phoneNumber");
  }

  String formatPhone() {
    return '+55' + phoneNumber.replaceAll(' ', '').replaceAll('-', '');
  }

  String formatMessage() {
    String valorTxt = 'Valor: *R\$ ' + blocSimulator.simulation.amount.toStringAsFixed(2) + '*';
    String parcelasTxt = 'Parcelas: *' + blocSimulator.simulation.months.toString() + 'x*';
    String valorParcelaTxt = 'Valor da parcela: *R\$ ' + blocSimulator.simulation.result.toStringAsFixed(2) + '*';
    String cpfTxt = blocUser.user.cpf == null ? '' : 'CPF: *' + blocUser.user.cpf + '*';
    String tipoTxt = 'Para *' + blocSimulator.formatType() + '*';
    return '*Simulação de Empréstimo*\n' + '\n' + tipoTxt  + '\n' + valorTxt + '\n' + parcelasTxt + '\n' + valorParcelaTxt + '\n' + cpfTxt;
  }

  Future<void> openMap() async {
    String query = Uri.encodeComponent(config.app.endereco);
    String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";

    await launch(googleUrl);
  }
}
