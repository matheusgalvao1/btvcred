import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import '../../model/User.dart';

class BlocSimulator extends BlocBase {
  PageController pageController = PageController();

  int
      //
      cPage = 0;

  double percent = 0;

  ModelUser user = ModelUser();

  void clear() {
    //
  }

  void nextPage() {
    if (cPage < 3) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn,
      );
      cPage++;
      nextPercentage();
      notifyListeners();
    }
  }

  void nextPercentage() {
    if (percent < 1) percent += 0.25;
    notifyListeners();
  }

  void previousPage() {
    if (cPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 700),
        curve: Curves.fastOutSlowIn,
      );
      cPage--;
      previousPercentage();
    }
  }

  void previousPercentage() {
    if (percent >= 0.25) {
      percent -= 0.25;
      notifyListeners();
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
      print(user.months);
    }
  }

  void setUserType(String value) {
    if (value != user.type) {
      user.type = value;
      notifyListeners();
    }
  }
}
