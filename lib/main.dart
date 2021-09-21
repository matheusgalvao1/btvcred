import 'package:flutter/material.dart' hide Router;
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:one_context/one_context.dart';

import 'bloc/Contact.dart';
import 'bloc/FgtsSimulator.dart';
import 'bloc/Intro.dart';
import 'bloc/Router.dart';
import 'bloc/Simulator.dart';
import 'bloc/User.dart';
import 'utility/CustomTheme.dart';
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
        home: Router(),
        routes: Routes.get(),
        darkTheme: CustomTheme.dark,
        theme: CustomTheme.light,
        //themeMode: ThemeMode.dark,
        navigatorKey: OneContext().navigator.key,
      ),
      blocs: <Bloc<dynamic>>[
        Bloc<BlocContact>((dynamic i) => BlocContact()),
        Bloc<BlocFgtsSimulator>((dynamic i) => BlocFgtsSimulator()),
        Bloc<BlocIntro>((dynamic i) => BlocIntro()),
        Bloc<BlocRouter>((dynamic i) => BlocRouter()),
        Bloc<BlocSimulator>((dynamic i) => BlocSimulator()),
        Bloc<BlocUser>((dynamic i) => BlocUser()),
      ],
      
      dependencies: [],
    );
  }
}
