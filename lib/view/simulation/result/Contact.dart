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
                      'Mandar proposta por:',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              ButtonWithIcon(
                onTap: () => bloc.sendWhatsApp(),
                text: 'WhatsApp',
                icon: CommunityMaterialIcons.whatsapp,
                iconColor: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: 15),
              ButtonWithIcon(
                onTap: () => bloc.callPhone(),
                text: 'Ligação',
                icon: CupertinoIcons.phone,
                iconColor: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        );
      }
    );
  }
}
