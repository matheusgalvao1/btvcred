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
              Icons.settings,
              size: 35,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'O que você gostaria de fazer?',
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
            text: 'Simulação Empréstimo Consignado',
            width: 150,
            height: 80,
            onTap: () => Navigator.pushNamed(context, '/simulator'),
          ),
          SizedBox(height: 20),
          MyButton(
            text: 'Simulação Saque FGTS',
            width: 150,
            height: 80,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
