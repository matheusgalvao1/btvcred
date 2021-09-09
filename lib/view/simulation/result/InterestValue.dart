part of 'main.dart';

class InterestValue extends StatelessWidget {
  final BlocSimulator bloc;

  const InterestValue(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => bloc.setShowTotal(),
          child: Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Total:',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        //color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                ),
                SizedBox(width: 10),
                Text(
                  'R\$ ',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                ),
                Text(
                  bloc.showTotal ? bloc.totalWithInterest.toStringAsFixed(2).replaceAll('.', ',') : '****,**',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                ),
                SizedBox(width: 5),
                Icon(
                  bloc.showTotal ? CommunityMaterialIcons.eye : CommunityMaterialIcons.eye_off,
                  //color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
