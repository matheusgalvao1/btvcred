import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import '../../model/User.dart';

class BlocSimulator extends BlocBase {
  PageController pageController = PageController();

  ModelUser user = ModelUser();

  void clear() {
    //
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
