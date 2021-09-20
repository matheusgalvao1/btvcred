import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/Button.dart';
import '../../components/ButtonOutlined.dart';
import '../../../utility/Locale.dart';
import '../../utility/Pointer.dart';

part 'AboutUs.dart';
part 'Location.dart';
part 'TermsOfUse.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SvgPicture.asset(
            'lib/assets/images/btv_cont.svg',
            height: MediaQuery.of(context).size.width * .27,
          ),
          SizedBox(height: 15),
          Text(
            Locale.btvName,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 15),
          ButtonOutlined(
            text: Locale.aboutUs,
            onTap: () => ModalAboutUs().show(context),
            height: 60,
            //width: 100,
          ),
          SizedBox(height: 10),
          ButtonOutlined(
            text: Locale.location,
            onTap: () => ModalLocation().show(context),
            height: 60,
            //width: 100,
          ),
          SizedBox(height: 10),
          ButtonOutlined(
            text: Locale.termOfUse,
            onTap: () => ModalTermsOfUse().show(context),
            height: 60,
            //width: 100,
          ),
          SizedBox(height: 20),
          InkWell(
            highlightColor: Colors.transparent,
            onTap: () => blocContact.openWhatsApp(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CommunityMaterialIcons.whatsapp,
                  color: Theme.of(context).colorScheme.primary,
                  size: 40,
                ),
                SizedBox(width: 10),
                Text(
                  config.app.whatsApp,
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
