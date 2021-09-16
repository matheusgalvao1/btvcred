import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

import '../../../bloc/Simulator.dart';
import '../../../components/Button.dart';
import '../../../components/ButtonOutlined.dart';
import '../../../utility/Locale.dart';
import '../../../utility/Pointer.dart';
import '../simulator/main.dart';

part 'Modal.dart';
part 'ModalMilitary.dart';

class Type extends StatelessWidget {
  final BlocSimulator bloc;

  const Type(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    Locale.typeText,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            MyButton(
              text: Locale.retiredINSS,
              width: 150,
              height: 60,
              onTap: () {
                bloc.setUserType('INSS');
                bloc.nextPage();
              },
            ),
            SizedBox(height: 20),
            MyButton(
              text: Locale.pensionINSS,
              width: 150,
              height: 60,
              onTap: () {
                bloc.setUserType('INSS');
                bloc.nextPage();
              },
            ),
            SizedBox(height: 20),
            MyButton(
              text: Locale.publicEmployee,
              width: 150,
              height: 60,
              onTap: () => Modal.showModal(context),
            ),
            SizedBox(height: 20),
            MyButton(
              text: Locale.military,
              width: 150,
              height: 60,
              onTap: () => ModalMilitary.showModal(context),
            ),
          ],
        ),
      ),
    );
  }
}
