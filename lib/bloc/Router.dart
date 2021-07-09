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
    Future.delayed(Duration(seconds: 3));
    // try {
    //   final RemoteConfig remoteConfig = await RemoteConfig.instance;

    //   Map<String, dynamic> _cache;
    //   bool _update = true;

    //   try {
    //     await remoteConfig.fetch(
    //       expiration: clear == false
    //           ? const Duration(hours: 12)
    //           : const Duration(minutes: 0),
    //     );
    //     await remoteConfig.activateFetched();

    //     _cache = remoteConfig.getAll().map<String, dynamic>(
    //         (String key, RemoteConfigValue value) =>
    //             MapEntry<String, dynamic>(key, jsonDecode(value.asString())));
    //   } catch (e) {
    //     _update = false;
    //     _cache = await FunctionCache.getConfig();
    //   }

    //   config = ModelConfig(
    //     api: _cache['api_server'] as Map<String, dynamic>,
    //     app: _cache['config_app'] as Map<String, dynamic>,
    //     maintenance: _cache['app_maintenance'] as bool,
    //     linkAndroid: _cache['store_link']['android'] as String,
    //     linkIOS: _cache['store_link']['ios'] as String,
    //     versionAndroid: _cache['store_version']['android'] as String,
    //     versionIOS: _cache['store_version']['ios'] as String,
    //   );

    //   if (Platform.isIOS) await FunctionCache.saveConfig(_cache, _update);
    // } catch (e) {
    //   return e;
    // }
  }

  Future<void> setNavigator() async {
    final String _value = await FunctionCache.getRedirect();

    if (config == null) {
      navigator = '/offline';
    } else if (_value == null) {
      navigator = '/home';
      return;
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
