import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/Button.dart';
import '../../components/ButtonIcon.dart';
import '../../components/ButtonOutlined.dart';
import '../../utility/Pointer.dart';

part 'Body.dart';
part 'Drawer.dart';

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
