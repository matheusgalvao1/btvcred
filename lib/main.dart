import 'package:flutter/material.dart'  hide Router;
import 'package:flutter/services.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import 'bloc/router.dart';
import 'bloc/Simulator.dart';
import 'view/home/main.dart';
import 'view/router/Routes.dart';
import 'view/router/main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'App Btv',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Router(),
        routes: Routes.get(),
      ),
      blocs: <Bloc<dynamic>>[
        Bloc<BlocRouter>((dynamic i) => BlocRouter()),
        Bloc<BlocSimulator>((dynamic i) => BlocSimulator()),
      ],
      dependencies: [],
    );
  }
}
