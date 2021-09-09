import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:one_context/one_context.dart';

import '../../model/Simulation.dart';
import '../../utility/Pointer.dart';

class BlocSimulator extends BlocBase {
  PageController pageController = PageController();

  int
      //
      cPage = 0;

  double percent = 0.25;

  ModelSimulation simulation = ModelSimulation();

  List parcelasInss = config.app.parcelasINSS.keys.toList();

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

  void previousPage(BuildContext context) async {
    if (cPage > 0) {
      previousPercentage();
      await pageController.previousPage(
        duration: const Duration(milliseconds: 700),
        curve: Curves.fastOutSlowIn,
      );
      cPage--;
      notifyListeners();
    } else {
      Navigator.pop(context);
    }
  }

  void previousPercentage() {
    if (percent > 0.25) {
      percent -= 0.25;
      notifyListeners();
    }
  }

  void setAmount(double value) {
    if (value != simulation.amount) {
      simulation.amount = value;
      notifyListeners();
    }
  }

  void setMonths(int value) {
    if (value != simulation.months) {
      simulation.months = value;
      notifyListeners();
    }
  }

  void setUserType(String value) {
    if (value != simulation.type) {
      simulation.type = value;
      notifyListeners();
    }
  }
}
