import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class BlocFgtsSimulator extends BlocBase {
  double
      //
      balance,
      percent = 0.25;

  int
      //
      cPage = 0;

  PageController pageController = PageController();
}
