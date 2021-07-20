import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:one_context/one_context.dart';

import '../../bloc/Simulator.dart';
import '../../components/Button.dart';
import '../../components/ButtonOutlined.dart';
import '../../utility/Pointer.dart';

part 'Modal.dart';

class Type extends StatelessWidget {
  final BlocSimulator bloc;

  const Type(this.bloc);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
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
                      'Nos fale sobre você',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .2),
              MyButton(
                text: 'Aposentado INSS',
                width: 150,
                height: 80,
                onTap: () {
                  bloc.setUserType('INSS');
                  bloc.nextPage();
                },
              ),
              SizedBox(height: 20),
              MyButton(
                text: 'Pensionista INSS',
                width: 150,
                height: 80,
                onTap: () {
                  bloc.setUserType('INSS');
                  bloc.nextPage();
                },
              ),
              SizedBox(height: 20),
              MyButton(
                text: 'Funcionário Público',
                width: 150,
                height: 80,
                onTap: () => Modal.showModal(context),
              ),
            ],
          ),
        ),
      );
  }
}
