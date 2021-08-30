import 'package:flutter/material.dart'  hide Router;
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

import 'bloc/FgtsSimulator.dart';
import 'bloc/router.dart';
import 'bloc/Simulator.dart';
import 'utility/CustomTheme.dart';
import 'view/home/main.dart';
import 'view/router/main.dart';
import 'view/router/Routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Firebase.initializeApp();

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
        Bloc<BlocFgtsSimulator>((dynamic i) => BlocFgtsSimulator()),
        Bloc<BlocRouter>((dynamic i) => BlocRouter()),
        Bloc<BlocSimulator>((dynamic i) => BlocSimulator()),
      ],
      dependencies: [],
    );
  }
}
