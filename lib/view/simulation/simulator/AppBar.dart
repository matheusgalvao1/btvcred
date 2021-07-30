part of 'main.dart';

class AppBarSimulator extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSimulator(this.bloc);

  final BlocSimulator bloc;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 20);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: Indicator(),
      ),

      elevation: 0,
      //title: Indicator(),
    );
  }
}
