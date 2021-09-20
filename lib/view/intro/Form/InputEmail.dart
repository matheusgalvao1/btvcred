part of 'main.dart';

class InputEmail extends StatelessWidget {
  InputEmail(this.bloc);

  final BlocIntro bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                Locale.email,
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: MediaQuery.of(context).size.width*.07,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          SizedBox(height: 5),
          TextField(
            //controller: bloc.cpfController,
            cursorRadius: Radius.circular(100),
            focusNode: bloc.emailFocus,
            keyboardType: TextInputType.emailAddress,
            onSubmitted: (String text) {},
            style: Theme.of(context).textTheme.headline1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
