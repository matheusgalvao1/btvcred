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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => bloc.callPhone(),
                  highlightColor: Colors.transparent,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.phone_fill,
                        color: Colors.white,
                        size: 55,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => bloc.sendWhatsApp(context),
                  highlightColor: Colors.transparent,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Icon(
                        CommunityMaterialIcons.whatsapp,
                        color: Colors.white,
                        size: 55,
                      ),
                    ),
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
