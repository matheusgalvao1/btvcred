import 'package:flutter/material.dart';

class ModelConfig {
  ModelConfig({
    @required this.app,
  });

  final ConfigAPP app;
}

class ConfigAPP {
  ConfigAPP({
    @required this.sobreNos,
    @required this.termo,
    @required this.whatsApp,
    @required this.parcelasINSS,
    @required this.parcelasEst,
    @required this.parcelasFed,
  });

  final String sobreNos;
  final String termo;
  final String whatsApp;
  final Map<String, dynamic> parcelasINSS;
  final Map<String, dynamic> parcelasEst;
  final Map<String, dynamic> parcelasFed;   
  
}
