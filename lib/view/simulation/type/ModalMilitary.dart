part of 'main.dart';

class ModalMilitary {
  static void showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) => Consumer<BlocSimulator>(
        builder: (context, bloc) {
          return Container(
            height: 370,
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
                  Locale.typeMilitary,
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 1,
                ),
                SizedBox(height: 10),
                ButtonOutlined(
                  text: Locale.military1,
                  height: 80,
                  width: 200,
                  onTap: () {
                    blocSimulator.setUserType('Exer');
                    Navigator.pop(context);
                    blocSimulator.nextPage();
                  },
                ),
                SizedBox(height: 15),
                ButtonOutlined(
                  text: Locale.military2,
                  height: 80,
                  width: 200,
                  onTap: () {
                    blocSimulator.setUserType('Mar');
                    Navigator.pop(context);
                    blocSimulator.nextPage();
                  },
                ),
                SizedBox(height: 15),
                ButtonOutlined(
                  text: Locale.military3,
                  height: 80,
                  width: 200,
                  onTap: () {
                    blocSimulator.setUserType('Aero');
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
