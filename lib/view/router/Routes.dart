import 'package:flutter/material.dart';

import '../../components/CustomSafe.dart';
import '../../view/home/main.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> get() {
    return <String, Widget Function(BuildContext)>{
      '/home': (BuildContext context) => CustomSafe(child: Home()),
    };
  }

  
}
