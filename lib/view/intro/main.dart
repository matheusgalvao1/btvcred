import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:community_material_icon/community_material_icon.dart';

import '../../bloc/Intro.dart';
import '../../components/Button.dart';
import '../../components/Loading.dart';
import '../../utility/Pointer.dart';
import '../../../utility/Locale.dart';
import 'Form/main.dart';

part 'Term.dart';

class Intro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<BlocIntro>(
      builder: (BuildContext context, BlocIntro bloc) {
        return Scaffold(
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: bloc.pageController,
            children: [
              Term(bloc),
              InputForms(bloc),
              MyLoading(),
            ],
          ),
        );
      }
    );
  }
}