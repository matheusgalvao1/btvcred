import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import '../../model/User.dart';

class BlocSimulator extends BlocBase {
  PageController pageController = PageController();

  int cPage = 0;
  double percent = 0;

  ModelUser user = ModelUser();

  void clear() {
    //
  }

  void plus() {
    if (percent < 1)
      percent += 0.25;
    else
      percent = 0;
    nextPage();
    notifyListeners();
  }

  void nextPage() {
    if (cPage < 3) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn,
      );
      cPage++;
    } else {
      cPage = 0;
      pageController.jumpTo(0);
      notifyListeners();
    }
    notifyListeners();
  }

  void previousPage() {
    if (cPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 700),
        curve: Curves.fastOutSlowIn,
      );
      cPage--;
    }
  }

  void setAmount(double value) {
    if (value != user.amount) {
      user.amount = value;
      notifyListeners();
    }
  }

  void setMonths(int value) {
    if (value != user.months) {
      user.months = value;
      notifyListeners();
    }
  }

  void setUserType(String value) {
    if (value != user.type) {
      user.type = value;
      notifyListeners();
    }
  }
}
