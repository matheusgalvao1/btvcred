import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/Button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.settings,
              size: 35,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(30),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Simulações',
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            //SizedBox(height: MediaQuery.of(context).size.height * .2),
            MyButton(
              text: 'Empréstimo Consignado',
              width: 150,
              height: 80,
              onTap: () => Navigator.pushNamed(context, '/simulator'),
            ),
            SizedBox(height: 20),
            MyButton(
              text: 'Saque FGTS',
              width: 150,
              height: 80,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
