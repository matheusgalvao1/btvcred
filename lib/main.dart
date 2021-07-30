import 'package:flutter/material.dart'  hide Router;
import 'package:flutter/services.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import 'bloc/router.dart';
import 'bloc/Simulator.dart';
import 'utility/CustomTheme.dart';
import 'view/home/main.dart';
import 'view/router/main.dart';
import 'view/router/Routes.dart';
import 'view/Simulation/simulator/main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'App Btv',
        home: Home(),
        routes: Routes.get(),
        darkTheme: CustomTheme.dark,
        theme: CustomTheme.light,
      ),
      blocs: <Bloc<dynamic>>[
        Bloc<BlocRouter>((dynamic i) => BlocRouter()),
        Bloc<BlocSimulator>((dynamic i) => BlocSimulator()),
      ],
      dependencies: [],
    );
  }
}
