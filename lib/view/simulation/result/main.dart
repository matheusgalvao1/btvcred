import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:community_material_icon/community_material_icon.dart';

import '../../../bloc/Contact.dart';
import '../../../bloc/Simulator.dart';
import '../../../components/ButtonIcon.dart';
import '../../../components/Loading.dart';
import '../../../utility/Locale.dart';
import '../simulator/main.dart';

part 'Contact.dart';
part 'FabHome.dart';
part 'InterestValue.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocSimulator>(
        builder: (BuildContext context, BlocSimulator bloc) {
      return Scaffold(
        floatingActionButton: Row(
          children: [
            Fab(),
            SizedBox(width: 5),
            FabHome(bloc),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: bloc.loading
            ? Center(child: MyLoading())
            : ListView(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .07,
                    bottom: 100,
                    right: 30,
                    left: 30),
                physics: BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          Locale.result,
                          style: Theme.of(context).textTheme.headline1.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                              ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(
                    color: Theme.of(context).colorScheme.primary,
                    thickness: 2,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          bloc.simulation.months.toString() +
                              ' ' +
                              Locale.monthsOf,
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
                          'R\$ ' +
                              bloc.simulation.result
                                  .toStringAsFixed(2)
                                  .replaceAll('.', ','),
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
                  SizedBox(height: 15),
                  Divider(
                    color: Theme.of(context).colorScheme.primary,
                    thickness: 2,
                  ),
                  SizedBox(height: 15),
                  Contact(),
                ],
              ),
      );
    });
  }
}
