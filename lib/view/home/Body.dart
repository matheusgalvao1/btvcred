part of 'main.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                  Locale.simulations,
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
            text: Locale.loan,
            width: 150,
            height: 60,
            onTap: () {
              blocSimulator.reset();
              Navigator.pushNamed(context, '/simulator');
            },
          ),
          // SizedBox(height: 20),
          // config.app.showFGTS
          //     ? MyButton(
          //         text: Locale.fgts,
          //         width: 150,
          //         height: 60,
          //         onTap: () => Navigator.pushNamed(context, '/fgts'),
          //       )
          //     : SizedBox(),
        ],
      ),
    );
  }
}
