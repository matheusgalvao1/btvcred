import 'package:btvcred/components/ButtonOutlined.dart';
import 'package:flutter/material.dart';

import '../../utility/Locale.dart';

class Offline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.wifi,
                    size: MediaQuery.of(context).size.width*.15,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    Locale.offlineTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                Locale.offlineText,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline1.copyWith(),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.1),
                child: ButtonOutlined(
                  height: 60,
                  text: 'Tentar conexão',
                  onTap: () => Navigator.pushReplacementNamed(context, '/'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
