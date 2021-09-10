import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../bloc/FgtsSimulator.dart';
import '../../../components/Button.dart';

part 'Input.dart';

class Balance extends StatelessWidget {
  final BlocFgtsSimulator bloc;

  const Balance(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => bloc.backHome(),
          icon: Icon(
            CupertinoIcons.left_chevron,
            color: Theme.of(context).colorScheme.primary,
            size: 30,
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .1,
          left: 30,
          right: 30,
        ),
        shrinkWrap: true,
        children: [
          Text(
            'Quanto você tem de saldo no FGTS?',
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 15),
          InputAmount(bloc),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                text: "Continuar",
                width: 150,
                onTap: () => bloc.validateInput(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
