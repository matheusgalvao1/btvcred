import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../bloc/FgtsSimulator.dart';
import '../../../components/Button.dart';

part 'Input.dart';
part 'ModalInfo.dart';

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
          top: MediaQuery.of(context).size.height * .05,
          left: 30,
          right: 30,
        ),
        shrinkWrap: true,
        children: [
          RaisedButton(
            onPressed: () async {
              if(bloc.inputFocus.hasFocus)
              {
                bloc.inputFocus.unfocus();
                await Future.delayed(Duration(milliseconds: 100));
              }
              ModalInfo().show(context);
            },
            highlightElevation: 0,
            color: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'lib/assets/icons/lightbulb.svg',
                  height: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Clique aqui para saber como funciona',
                    style: Theme.of(context).textTheme.headline3.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
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
