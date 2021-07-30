part of 'main.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            text: 'WhatsApp',
            icon: CommunityMaterialIcons.whatsapp,
          ),
          SizedBox(height: 15),
          ButtonWithIcon(
            text: 'Ligação',
            icon: CupertinoIcons.phone,
          ),
        ],
      ),
    );
  }
}
