part of 'main.dart';

class Modal {
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
              color: Theme.of(context).colorScheme.onSecondary,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'Tipo de Funcionário',
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
                  text: 'Municipal',
                  height: 80,
                  width: 200,
                ),
                SizedBox(height: 15),
                ButtonOutlined(
                  text: 'Estadual',
                  height: 80,
                  width: 200,
                ),
                SizedBox(height: 15),
                ButtonOutlined(
                  text: 'Federal',
                  height: 80,
                  width: 200,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
