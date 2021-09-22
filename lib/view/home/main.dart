import 'package:btvcred/components/CustomBar.dart';
import 'package:btvcred/components/CustomBarIcon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import '../../components/Button.dart';
import '../../utility/Pointer.dart';
import '../../../utility/Locale.dart';
import '../drawer/main.dart';

part 'Body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    blocUser.init(context);
    return Scaffold(
      body: SliderMenuContainer(
        appBarPadding: EdgeInsets.only(top: 30),
        appBarColor: Theme.of(context).colorScheme.background,
        title: null,
        drawerIconColor: Theme.of(context).colorScheme.primary,
        animationDuration: 400,
        drawerIconSize: 35,
        sliderMain: HomeBody(),
        sliderMenu: MyDrawer(),
      ),
    );
  }
}
