part of 'main.dart';

class ModalKnowMore {
  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return KnowMore();
      },
    );
  }
}

class KnowMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            Locale.knowMore,
            style: Theme.of(context).textTheme.headline1.copyWith(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),

            icon: Icon(
              CupertinoIcons.left_chevron,
              color: Theme.of(context).colorScheme.primary,
              size: 30,
            ),
          ),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(30),
          children: [
            Text(config.app.saibaMaisRegister, style: Theme.of(context).textTheme.headline2),
          ],
        ),
      ),
    );
  }
}
