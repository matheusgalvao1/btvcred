import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:community_material_icon/community_material_icon.dart';

import '../../../components/ButtonIcon.dart';

part 'Contact.dart';
part 'InterestValue.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30),
        physics: BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Resultado:',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Text(
                  '36 parcelas de',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'R\$ 3000,00',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 50,
                      ),
                ),
              ),
            ],
          ),
          //InterestValue(),
          SizedBox(height: 30),
          Contact(),
        ],
      ),
    );
  }
}
