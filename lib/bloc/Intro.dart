import 'package:btvcred/function/Cache.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

class BlocIntro extends BlocBase {
  PageController pageController = PageController();

  int cPage = 0;

  void agree() {
    nextPage();
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
    cPage++;
    notifyListeners();
  }

  Future<void> FinishRegister() async {
    await FunctionCache.redirectTo('/home');
  }
}
