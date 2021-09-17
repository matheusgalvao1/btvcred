import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:one_context/one_context.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

import '../../components/CustomBar.dart';
import '../../model/Simulation.dart';
import '../../../utility/Locale.dart';
import '../../utility/Pointer.dart';

class BlocSimulator extends BlocBase {
  bool showTotal = false;

  PageController pageController = PageController();

  int cPage = 0;

  double get totalWithInterest => simulation.result * simulation.months;

  double
      //
      auxCalculate = 0,
      percent = 0.25;

  var amountController =
      MoneyMaskedTextController(leftSymbol: 'R\$ ', initialValue: 0);

  FixedExtentScrollController pickerController = FixedExtentScrollController();

  FocusNode inputFocus = FocusNode();

  ModelSimulation simulation = ModelSimulation();

  List parcelasInss = config.app.parcelasINSS.keys.toList();
  List parcelasEst = config.app.parcelasEst.keys.toList();
  List parcelasFed = config.app.parcelasFed.keys.toList();
  List parcelasExercito = config.app.parcelasExercito.keys.toList();
  List parcelasMarinha = config.app.parcelasMarinha.keys.toList();
  List parcelasAeronautica = config.app.parcelasAeronautica.keys.toList();
  List listGeneric = [];

  void clear() {
    //
  }

  void reset() {
    cPage = 0;
    percent = 0.25;
    amountController =
        MoneyMaskedTextController(leftSymbol: 'R\$ ', initialValue: 0);
    //notifyListeners();
  }

  void backHome() {
    reset();
    OneContext().navigator.pop();
  }

  void calculateResult() {
    switch (simulation.type) {
      case 'INSS':
        auxCalculate = config.app.parcelasINSS[simulation.months.toString()];
        break;
      case 'M':
        auxCalculate = config.app.parcelasEst[simulation.months.toString()];
        break;
      case 'E':
        auxCalculate = config.app.parcelasEst[simulation.months.toString()];
        break;
      case 'F':
        auxCalculate = config.app.parcelasFed[simulation.months.toString()];
        break;
      case 'Exer':
        auxCalculate =
            config.app.parcelasExercito[simulation.months.toString()];
        break;
      case 'Mar':
        auxCalculate = config.app.parcelasMarinha[simulation.months.toString()];
        break;
      case 'Aero':
        auxCalculate =
            config.app.parcelasAeronautica[simulation.months.toString()];
        break;
    }
    print(auxCalculate);
    simulation.result = simulation.amount * auxCalculate;
    notifyListeners();
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
      case 'Exer':
        listGeneric = parcelasExercito;
        break;
      case 'Mar':
        listGeneric = parcelasMarinha;
        break;
      case 'Aero':
        listGeneric = parcelasAeronautica;
        break;
      default:
        listGeneric = parcelasInss;
    }
    pickerController =
        FixedExtentScrollController(initialItem: listGeneric.length - 1);
    notifyListeners();
  }

  String formatType() {
    switch (simulation.type) {
      case 'INSS':
        return 'INSS';
        break;
      case 'M':
        return 'Funcionário ' + Locale.public1;
        break;
      case 'E':
        return 'Funcionário ' + Locale.public2;
        break;
      case 'F':
        return 'Funcionário ' + Locale.public3;
        break;
      case 'Exer':
        return Locale.military1;
        break;
      case 'Mar':
        return Locale.military2;
        break;
      case 'Aero':
        return Locale.military3;
        break;
      default:
        return ' ';
    }
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

  void previousPage() async {
    if (cPage > 0) {
      if (inputFocus.hasFocus) {
        inputFocus.unfocus();
        await Future.delayed(Duration(milliseconds: 100));
      }
      previousPercentage();
      await pageController.previousPage(
        duration: const Duration(milliseconds: 700),
        curve: Curves.fastOutSlowIn,
      );
      cPage--;
      notifyListeners();
    } else {
      backHome();
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

  void setShowTotal({bool value}) {
    if (value == null)
      showTotal = !showTotal;
    else
      showTotal = value;
    notifyListeners();
  }

  void setUserType(String value) {
    if (value != simulation.type) {
      simulation.type = value;
      notifyListeners();
      defineParcelas(simulation.type);
    }
  }

  void validateInput(double value, BuildContext ctx) async {
    if (value == 0)
      CustomBar.showAlert(
        context: ctx,
        title: Locale.notZero,
        message: Locale.tryAgain,
      );
    else if (value < config.app.valorMin) {
      CustomBar.showAlert(
        context: ctx,
        title: Locale.notEnough,
        message: Locale.atLeast + ' R\$ ' + config.app.valorMin.toString() + ',00',
      );
    } else {
      await Future.delayed(Duration(milliseconds: 100));
      setAmount(value);
      nextPage();
    }
  }
}
