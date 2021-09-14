part of 'main.dart';

class Term extends StatelessWidget {
  Term(this.bloc);

  final BlocIntro bloc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.symmetric(vertical: 90, horizontal: 30),
          physics: BouncingScrollPhysics(),
          children: [
            Text(
              "Termo de Uso",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: 40,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: 30),
            Text(
              config.app.termo,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
        Positioned(
          bottom: 30,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: MyButton(
                text: 'Li e concordo',
                onTap: () => bloc.agree(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
