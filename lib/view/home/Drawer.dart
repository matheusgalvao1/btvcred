part of 'main.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
      child: Column(
        //physics: BouncingScrollPhysics(),
        //padding: EdgeInsets.symmetric(vertical: 100, horizontal: 15),
        children: [
          Image.asset('lib/assets/images/bemtvlogo.png',
              height: MediaQuery.of(context).size.width * .3),
          SizedBox(height: 50),
          ButtonOutlined(
            text: 'Sobre nós',
            height: 60,
            //width: 100,
          ),
          SizedBox(height: 15),
          ButtonOutlined(
            text: 'Localização',
            height: 60,
            //width: 100,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
