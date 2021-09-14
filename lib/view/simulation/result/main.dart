import 'package:btvcred/utility/Pointer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:community_material_icon/community_material_icon.dart';

import '../../../bloc/Contact.dart';
import '../../../bloc/Simulator.dart';
import '../../../components/ButtonIcon.dart';
import '../simulator/main.dart';

part 'Contact.dart';
part 'InterestValue.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocSimulator>(
        builder: (BuildContext context, BlocSimulator bloc) {
      return Scaffold(
        floatingActionButton: Fab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
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
                    bloc.simulation.months.toString() + ' parcelas de',
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
                    'R\$ ' + bloc.simulation.result.toStringAsFixed(2).replaceAll('.', ','),
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 50,
                        ),
                  ),
                ),
              ],
            ),
            //SizedBox(height: 10),
            //InterestValue(bloc),
            SizedBox(height: 30),
            Contact(),
            SizedBox(height: 30),
            InkWell(
              onTap: () => bloc.backHome(),
              highlightColor: Colors.transparent,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 35,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Voltar para tela inicial',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.primary,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
