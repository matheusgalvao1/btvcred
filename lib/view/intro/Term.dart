part of 'main.dart';

class Term extends StatelessWidget {
  Term(this.bloc);

  final BlocIntro bloc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(top: 60, bottom: 150, right: 30, left: 30),
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  CommunityMaterialIcons.book_account,
                  size: MediaQuery.of(context).size.width*.1,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Text(
                  Locale.termOfUse,
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontSize: MediaQuery.of(context).size.width*.08,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
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
                text: Locale.agree,
                height: 60,
                onTap: () => bloc.agree(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
