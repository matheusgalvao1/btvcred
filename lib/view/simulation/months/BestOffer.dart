part of 'main.dart';

class BestOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        Locale.bestOffer,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 8,
            ),
      ),
    );
  }
}
