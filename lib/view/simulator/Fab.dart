part of 'main.dart';

class Fab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Icon(
        Icons.arrow_back,
        size: 35,
        color: Colors.white, //Theme.of(context).colorScheme.onSecondary,
      ),
      onPressed: () {
        blocSimulator.previousPage(context);
      },
    );
  }
}
