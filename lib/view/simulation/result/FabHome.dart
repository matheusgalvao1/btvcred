part of 'main.dart';

class FabHome extends StatelessWidget {
  FabHome(this.bloc);

  final BlocSimulator bloc;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Icon(
        CommunityMaterialIcons.home,
        size: 35,
        color: Colors.white, //Theme.of(context).colorScheme.onSecondary,
      ),
      onPressed: () => bloc.backHome(),
    );
  }
}
