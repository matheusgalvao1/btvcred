part of 'main.dart';

class ModalLocation {
  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Location();
      },
    );
  }
}

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            Locale.location,
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
          padding: EdgeInsets.all(15),
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
                    child: Text(config.app.endereco,
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
