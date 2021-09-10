import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import '../../components/Button.dart';
import '../../utility/Pointer.dart';
import '../drawer/main.dart';

part 'Body.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderMenuContainer(
        appBarColor: Theme.of(context).colorScheme.background,
        title: null,
        drawerIconColor: Theme.of(context).colorScheme.primary,
        drawerIconSize: 35,
        sliderMain: HomeBody(),
        sliderMenu: MyDrawer(),
      ),
    );
  }
}
