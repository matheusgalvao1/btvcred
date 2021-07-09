import 'package:bloc_pattern/bloc_pattern.dart';

import '../bloc/Simulator.dart';
import '../bloc/Router.dart';
import '../model/Config.dart';

final BlocSimulator blocSimulator = BlocProvider.getBloc<BlocSimulator>();
final BlocRouter blocRouter = BlocProvider.getBloc<BlocRouter>();

ModelConfig config;

void clearBlocs() {
  //blocSimulator.clear();
}