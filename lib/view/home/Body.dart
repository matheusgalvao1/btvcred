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
                  'Simulações',
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
            text: 'Empréstimo Consignado',
            width: 150,
            height: 80,
            onTap: () => Navigator.pushNamed(context, '/simulator'),
          ),
          SizedBox(height: 20),
          config.app.showFGTS ? MyButton(
            text: 'Saque FGTS',
            width: 150,
            height: 80,
            onTap: () => Navigator.pushNamed(context, '/fgts'),
          ): SizedBox(),
        ],
      ),
    );
  }
}
