part of 'main.dart';

class ModalTermsOfUse {
  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return TermsOfUse();
      },
    );
  }
}

class TermsOfUse extends StatelessWidget {
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
            Locale.termOfUse,
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
            Text(config.app.termo, style: Theme.of(context).textTheme.headline2),
          ],
        ),
      ),
    );
  }
}
