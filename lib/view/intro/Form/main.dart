import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../bloc/Intro.dart';
import '../../../components/Button.dart';
import '../../../utility/Pointer.dart';

part 'InputCpf.dart';
part 'ModalKnowMore.dart';

class InputForms extends StatelessWidget {
  InputForms(this.bloc);

  final BlocIntro bloc;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 60, bottom: 30, right: 30, left: 30),
      physics: BouncingScrollPhysics(),
      children: [
        Text(
          'Precisamos de algumas informações',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1.copyWith(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            ModalKnowMore().show(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.info_outline,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 5),
              Text(
                'Saiba mais',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
        InputCpf(bloc),
        //SizedBox(height: 20),
        //InputCpf(),
        SizedBox(height: 40),
        MyButton(
          text: 'Continuar',
          height: 80,
          onTap: () {
            bloc.FinishRegister();
          },
        ),

      ],
    );
  }
}
