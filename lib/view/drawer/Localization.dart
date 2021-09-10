part of 'main.dart';

class ModalLocalization {
  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Localization();
      },
    );
  }
}

class Localization extends StatelessWidget {
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
            'Localização',
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(fontWeight: FontWeight.w600),
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
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    CupertinoIcons.location,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Text('R. Mal. Deodoro da Fonseca, 17 - Centro, Ponta Grossa - PR, 84010-030',
                        style: Theme.of(context).textTheme.headline2),
                  ),
                ],
              ),
              MyButton(
                text: 'Ver no Google Maps',
                onTap: () => blocContact.openMap(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
