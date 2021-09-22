import 'package:bloc_pattern/bloc_pattern.dart';

import '../bloc/Contact.dart';
import '../bloc/FgtsSimulator.dart';
import '../bloc/Router.dart';
import '../bloc/Simulator.dart';
import '../bloc/Theme.dart';
import '../bloc/User.dart';
import '../model/Config.dart';


final BlocContact blocContact = BlocProvider.getBloc<BlocContact>();
final BlocFgtsSimulator blocFgts = BlocProvider.getBloc<BlocFgtsSimulator>();
final BlocRouter blocRouter = BlocProvider.getBloc<BlocRouter>();
final BlocSimulator blocSimulator = BlocProvider.getBloc<BlocSimulator>();
final BlocTheme blocTheme = BlocProvider.getBloc<BlocTheme>();
final BlocUser blocUser = BlocProvider.getBloc<BlocUser>();

ModelConfig config;
