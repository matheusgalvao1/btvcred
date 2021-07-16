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
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Text(
                'Valor do empréstimo',
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 15),
            InputAmount(),
          ],
        ),
      ),
    );
  }
}
