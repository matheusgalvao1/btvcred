import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

import '../../components/CustomBar.dart';
import '../../function/Cache.dart';
import '../../utility/Locale.dart';

class BlocIntro extends BlocBase {
  PageController pageController = PageController();

  var cpfController = MaskedTextController(mask: '000.000.000-00');
  //var emailController =

  FocusNode cpfFocus = FocusNode();
  FocusNode emailFocus = FocusNode();

  void agree() {
    nextPage();
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
    notifyListeners();
  }

  Future<void> validate(BuildContext ctx) async {
    if (cpfController.text.isEmpty || cpfController.text.length < 14) {
      CustomBar.showAlert(
        context: ctx,
        title: 'CPF Inválido',
        message: Locale.tryAgain,
      );
      print(cpfController.text.length);
    } else {
      await finishRegister();
    }
  }

  Future<void> finishRegister() async {
    await unfocusKeyboard();
    nextPage();
    await Future.delayed(Duration(milliseconds: 2000));
    await FunctionCache.redirectTo('/home');
  }

  Future<void> unfocusKeyboard() async {
    if (cpfFocus.hasFocus) {
      cpfFocus.unfocus();
      Future.delayed(Duration(milliseconds: 100));
    } else if (emailFocus.hasFocus) {
      emailFocus.unfocus();
      Future.delayed(Duration(milliseconds: 100));
    }
  }
}
