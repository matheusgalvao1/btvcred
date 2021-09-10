import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:community_material_icon/community_material_icon.dart';

import '../../components/Button.dart';
import '../../components/ButtonOutlined.dart';
import '../../utility/Pointer.dart';

part 'AboutUs.dart';
part 'Localization.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
      child: Column(
        children: [
          Image.asset('lib/assets/images/bemtvlogo.png',
              height: MediaQuery.of(context).size.width * .3),
          SizedBox(height: 50),
          ButtonOutlined(
            text: 'Sobre nós',
            onTap: () => ModalAboutUs().show(context),
            height: 60,
            //width: 100,
          ),
          SizedBox(height: 15),
          ButtonOutlined(
            text: 'Localização',
            onTap: () => ModalLocalization().show(context),
            height: 60,
            //width: 100,
          ),
          SizedBox(height: 20),
          Row(
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
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
