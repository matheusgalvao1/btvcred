import 'package:btvcred/components/Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../bloc/Simulator.dart';

part 'Input.dart';

class Amount extends StatelessWidget {
  final BlocSimulator bloc;

  const Amount(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .25,
          left: 30,
          right: 30,
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
          InputAmount(),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                text: "Continuar",
                width: 150,
                onTap: () {
                  //
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
