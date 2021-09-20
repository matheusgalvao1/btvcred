part of 'main.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocContact>(
        builder: (BuildContext context, BlocContact bloc) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    Locale.contact,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => bloc.callPhone(),
                  icon: Icon(
                    CupertinoIcons.phone,
                    color: Theme.of(context).colorScheme.primary,
                    size: 50,
                  ),
                ),
                SizedBox(width: 30),
                IconButton(
                  onPressed: () => bloc.sendWhatsApp(context),
                  icon: Icon(
                    CommunityMaterialIcons.whatsapp,
                    color: Theme.of(context).colorScheme.primary,
                    size: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
