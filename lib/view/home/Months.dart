part of 'main.dart';

class Months extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          blocSimulator.cPage.toString(),
          style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blue),
        ),
      ),
    );
  }
}