import 'package:btvcred/function/Cache.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

class BlocIntro extends BlocBase {
  PageController pageController = PageController();

  var cpfController = MaskedTextController(mask: '000.000.000-00');

  FocusNode cpfFocus = FocusNode();

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

  Future<void> FinishRegister() async {
    nextPage();
    await Future.delayed(Duration(milliseconds: 2000));
    await FunctionCache.redirectTo('/home');
  }
}
