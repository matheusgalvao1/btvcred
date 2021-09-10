import 'dart:convert';
import 'dart:io';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:one_context/one_context.dart';

import '../components/CustomBar.dart';
import '../function/Cache.dart';
import '../model/Config.dart';
import '../utility/Pointer.dart';

class BlocRouter extends BlocBase {
  String navigator;

  Future<void> init() async {
    await initConfig();
    await setNavigator();
  }

  static Future<void> initConfig({bool clear = false}) async {
    try {
      final RemoteConfig remoteConfig = RemoteConfig.instance;

      Map<String, dynamic> _map;

      try {
        await remoteConfig.fetchAndActivate();
        _map = remoteConfig.getAll().map<String, dynamic>(
            (String key, RemoteConfigValue value) =>
                MapEntry<String, dynamic>(key, jsonDecode(value.asString())));
      } catch (e) {
        _map = await FunctionCache.getConfig();
      }

      config = ModelConfig(
        app: ConfigAPP(
          whatsApp: _map['config_app']['whatsapp'] as String,
          sobreNos: _map['config_app']['sobreNos'] as String,
          termo: _map['config_app']['termo'] as String,
          endereco: _map['config_app']['endereco'] as String,
          parcelasINSS: _map['config_app']['parcelasINSS'] as Map<String, dynamic>,
          parcelasEst: _map['config_app']['parcelasEst'] as Map<String, dynamic>,
          parcelasFed: _map['config_app']['parcelasFed'] as Map<String, dynamic>,
        ),
      );
    } catch (e) {
      return e;
    }
  }

  Future<void> setNavigator() async {
    final String _value = await FunctionCache.getRedirect();

    if (config == null) {
      navigator = '/offline';
    } else if (_value == null) {
      navigator = '/home';
    } else {
      final String _data = json.decode(_value).toString();
      if (_data == '/home') {
        navigator = '/home';
      } else {
        navigator = _data;
      }
    }

    notifyListeners();
  }
}
