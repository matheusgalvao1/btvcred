import 'package:flutter/material.dart';

class ModelConfig {
  ModelConfig({
    @required this.api,
    @required this.app,
    @required this.linkAndroid,
    @required this.linkIOS,
    @required this.maintenance,
    @required this.versionAndroid,
    @required this.versionIOS,
  });

  final bool
      //
      maintenance;

  final Map<String, dynamic>
      //
      api,
      app;

  final String
      //
      linkAndroid,
      linkIOS,
      versionAndroid,
      versionIOS;
}
