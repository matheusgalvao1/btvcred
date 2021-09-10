import 'package:flutter/material.dart';

import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:one_context/one_context.dart';

import '../components/CustomBar.dart';
import '../utility/Pointer.dart';

class BlocFgtsSimulator extends BlocBase {
  double
      //
      balance,
      percent = 0.25;

  int
      //
      cPage = 0,
      saldoMin = config.app.saldoMinFGTS;

  FocusNode inputFocus = FocusNode();
  PageController pageController = PageController();
  var amountController =
      MoneyMaskedTextController(leftSymbol: 'R\$ ', initialValue: 0);

  void backHome() async {
    if (inputFocus.hasFocus) {
      inputFocus.unfocus();
      await Future.delayed(Duration(milliseconds: 100));
    }

    reset();
    OneContext().navigator.pop();
  }

  void reset() {}

  void validateInput(BuildContext ctx) async {
    if (amountController.numberValue < config.app.saldoMinFGTS)
      CustomBar.showAlert(
        context: ctx,
        title: 'Saldo insuficiente',
        message: 'Deve ser pelo menos R\$ ' + saldoMin.toString() + ',00',
      );
    else {
      //setAmount(value);
      if (inputFocus.hasFocus) {
        inputFocus.unfocus();
        await Future.delayed(Duration(milliseconds: 100));
      }
      //nextPage();
    }
  }
}
