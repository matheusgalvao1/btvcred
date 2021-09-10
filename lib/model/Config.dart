import 'package:flutter/material.dart';

class ModelConfig {
  ModelConfig({
    @required this.app,
  });

  final ConfigAPP app;
}

class ConfigAPP {
  ConfigAPP({
    @required this.endereco,
    @required this.sobreNos,
    @required this.termo,
    @required this.whatsApp,
    @required this.parcelasINSS,
    @required this.parcelasEst,
    @required this.parcelasFed,
    @required this.saldoMinFGTS,
    @required this.showFGTS,
    @required this.comoFuncionaFGTS,
    @required this.parcelasMarinha,
    @required this.parcelasExercito,
    @required this.parcelasAeronautica
  });

  final bool showFGTS;
  final int saldoMinFGTS;
  final String endereco;
  final String sobreNos;
  final String termo;
  final String whatsApp;
  final String comoFuncionaFGTS;
  final Map<String, dynamic> parcelasINSS;
  final Map<String, dynamic> parcelasEst;
  final Map<String, dynamic> parcelasFed;

  final Map<String, dynamic> parcelasMarinha;
  final Map<String, dynamic> parcelasExercito;
  final Map<String, dynamic> parcelasAeronautica;
}
