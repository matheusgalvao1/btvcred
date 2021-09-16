part of 'main.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: NutsActivityIndicator(
          radius: 50,
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: Theme.of(context).colorScheme.primary.withOpacity(.5),
          tickCount: 15,
          endRatio: .75,
          startRatio: 0.65,
        ),
      ),
    );
  }
}
