import 'package:btvcred/components/Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../bloc/Simulator.dart';
import '../simulator/main.dart';

part 'Input.dart';

class Amount extends StatelessWidget {
  final BlocSimulator bloc;

  const Amount(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .15,
          left: 30,
          right: 30,
          bottom: 30,
        ),
        shrinkWrap: true,
        children: [
          Text(
            'Valor do empréstimo',
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 15),
          InputAmount(bloc),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                text: "Continuar",
                width: 150,
                onTap: () async {
                  bloc.inputFocus.unfocus();
                  await Future.delayed(Duration(milliseconds: 200));
                  bloc.setAmount(bloc.amountController.numberValue);
                  bloc.nextPage();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
