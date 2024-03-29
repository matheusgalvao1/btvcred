import 'package:btvcred/components/Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../bloc/Simulator.dart';
import '../simulator/main.dart';
import '../../../utility/Locale.dart';

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
          top: MediaQuery.of(context).size.height < 600 ? 0 : MediaQuery.of(context).size.height * .15,
          left: 30,
          right: 30,
          bottom: 50,
        ),
        shrinkWrap: true,
        children: [
          Text(
            Locale.amount,
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width*.06,
                ),
          ),
          SizedBox(height: 15),
          InputAmount(bloc),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                text: Locale.next,
                width: 150,
                onTap: () async {
                  bloc.inputFocus.unfocus();
                  bloc.validateInput(
                      bloc.amountController.numberValue, context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
