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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  CommunityMaterialIcons.book_account,
                  size: MediaQuery.of(context).size.width * .2,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Text(
                  Locale.termOfUse,
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontSize: MediaQuery.of(context).size.width * .08,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 2,
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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: MyButton(
                  text: Locale.agree,
                  height: 60,
                  onTap: () => bloc.agree(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
