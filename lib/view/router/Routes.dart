import 'package:flutter/material.dart';

import '../../components/CustomSafe.dart';
import '../../view/home/main.dart';
import '../../view/fgts/main.dart';
import '../../view/Simulation/simulator/main.dart';
import '../../view/router/Offline.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> get() {
    return <String, Widget Function(BuildContext)>{
      '/fgts': (BuildContext context) => CustomSafe(child: Fgts()),
      '/home': (BuildContext context) => CustomSafe(child: Home()),
      '/simulator': (BuildContext context) => CustomSafe(child: Simulator()),
      '/offline': (BuildContext context) => Offline(),
    };
  }

  
}
