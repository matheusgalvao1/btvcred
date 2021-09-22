import 'package:flutter/material.dart' hide Router;
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_animated_theme/flutter_animated_theme.dart';
import 'package:one_context/one_context.dart';

import 'bloc/Contact.dart';
import 'bloc/FgtsSimulator.dart';
import 'bloc/Intro.dart';
import 'bloc/Router.dart';
import 'bloc/Simulator.dart';
import 'bloc/Theme.dart';
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
      child: Consumer<BlocTheme>(
        builder: (BuildContext context, BlocTheme bloc) {
          return AnimatedThemeApp(
            animationDuration: Duration(milliseconds: 200),
            animationType: AnimationType.CIRCULAR_ANIMATED_THEME,
            darkTheme: CustomTheme.dark,
            home: Router(),
            navigatorKey: OneContext().navigator.key,
            routes: Routes.get(),
            theme: CustomTheme.light,
            themeMode: bloc.mode != null ? bloc.mode : ThemeMode.dark,
            title: 'App Btv',
          );
        }
      ),
      blocs: <Bloc<dynamic>>[
        Bloc<BlocContact>((dynamic i) => BlocContact()),
        Bloc<BlocFgtsSimulator>((dynamic i) => BlocFgtsSimulator()),
        Bloc<BlocIntro>((dynamic i) => BlocIntro()),
        Bloc<BlocRouter>((dynamic i) => BlocRouter()),
        Bloc<BlocSimulator>((dynamic i) => BlocSimulator()),
        Bloc<BlocTheme>((dynamic i) => BlocTheme()),
        Bloc<BlocUser>((dynamic i) => BlocUser()),
      ],
      dependencies: [],
    );
  }
}
