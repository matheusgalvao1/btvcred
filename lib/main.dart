import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/bloc/simulator.dart';
import 'view/home/main.dart';

void main() {
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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
      blocs: <Bloc<dynamic>>[
        Bloc<BlocSimulator>((dynamic i) => BlocSimulator()),
      ],
      dependencies: [],
    );
  }
}
