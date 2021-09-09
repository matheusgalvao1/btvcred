import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:one_context/one_context.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

import '../../model/Simulation.dart';
import '../../utility/Pointer.dart';

class BlocSimulator extends BlocBase {
  PageController pageController = PageController();

  int cPage = 0;

  double percent = 0.25;

  final amountController =
      MoneyMaskedTextController(leftSymbol: 'R\$ ', initialValue: 0);

  FixedExtentScrollController pickerController = FixedExtentScrollController();

  ModelSimulation simulation = ModelSimulation();

  List parcelasInss = config.app.parcelasINSS.keys.toList();
  List parcelasEst = config.app.parcelasEst.keys.toList();
  List parcelasFed = config.app.parcelasFed.keys.toList();
  List listGeneric = [];

  void clear() {
    //
  }

  void defineParcelas(String type) {
    switch (type) {
      case 'INSS':
        listGeneric = parcelasInss;
        break;
      case 'M':
        listGeneric = parcelasEst;
        break;
      case 'E':
        listGeneric = parcelasEst;
        break;
      case 'F':
        listGeneric = parcelasFed;
        break;
      default:
        listGeneric = parcelasInss;
    }
    notifyListeners();
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

  void setMonths() {
    if (listGeneric[pickerController.selectedItem] != simulation.months) {
      simulation.months = int.parse(listGeneric[pickerController.selectedItem]);
      notifyListeners();
      print('Parcelas: ' + simulation.months.toString());
    }
  }

  void setUserType(String value) {
    if (value != simulation.type) {
      simulation.type = value;
      notifyListeners();
      defineParcelas(simulation.type);
    }
  }
}
