import 'package:flutter/material.dart';

import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:one_context/one_context.dart';

import '../components/CustomBar.dart';
import '../../../utility/Locale.dart';
import '../utility/Pointer.dart';

class BlocFgtsSimulator extends BlocBase {
  double
      //
      balance = 0,
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

  void nextPage() {
    if (cPage < 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn,
      );
      cPage++;
      notifyListeners();
    }
  }

  void reset() {
    amountController =
      MoneyMaskedTextController(leftSymbol: 'R\$ ', initialValue: 0);
  }

  void setBalance() {
    if (amountController.numberValue != balance) {
      balance = amountController.numberValue;
      notifyListeners();
    }
  }

  void validateInput(BuildContext ctx) async {
    if (amountController.numberValue < config.app.saldoMinFGTS)
      CustomBar.showAlert(
        context: ctx,
        title: Locale.insufficient,
        message: Locale.atLeast + ' R\$ ' + saldoMin.toString() + ',00',
      );
    else {
      setBalance();
      if (inputFocus.hasFocus) {
        inputFocus.unfocus();
        await Future.delayed(Duration(milliseconds: 100));
      }
      //nextPage();
    }
  }
}
