part of 'main.dart';

class Modal {
  static void showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Consumer<BlocSimulator>(
        builder: (context, bloc) {
          return Container(
            height: 350,
            color: Colors.transparent,
            child: Container(
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
                  SizedBox(height: 15),
                  ButtonOutlined(
                    text: 'Municipal',
                    height: 80,
                    width: 150,
                  ),
                  SizedBox(height: 15),
                  ButtonOutlined(
                    text: 'Estadual',
                    height: 80,
                    width: 150,
                  ),
                  SizedBox(height: 15),
                  ButtonOutlined(
                    text: 'Federal',
                    height: 80,
                    width: 150,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
