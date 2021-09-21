part of 'main.dart';

class Modal {
  static void showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      elevation: 0,
      isScrollControlled:true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) => Consumer<BlocSimulator>(
        builder: (context, bloc) {
          return Container(
            height: 350,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  Locale.typeEmployee,
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: 5),
                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 1,
                ),
                SizedBox(height: 15),
                ButtonOutlined(
                  text: Locale.public1,
                  height: 60,
                  width: 200,
                  onTap: () {
                    blocSimulator.setUserType('M');
                    Navigator.pop(context);
                    blocSimulator.nextPage();
                  },
                ),
                SizedBox(height: 15),
                ButtonOutlined(
                  text: Locale.public2,
                  height: 60,
                  width: 200,
                  onTap: () {
                    blocSimulator.setUserType('E');
                    Navigator.pop(context);
                    blocSimulator.nextPage();
                  },
                ),
                SizedBox(height: 15),
                ButtonOutlined(
                  text: Locale.public3,
                  height: 60,
                  width: 200,
                  onTap: () {
                    blocSimulator.setUserType('F');
                    Navigator.pop(context);
                    blocSimulator.nextPage();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
