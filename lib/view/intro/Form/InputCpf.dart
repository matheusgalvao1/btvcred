part of 'main.dart';

class InputCpf extends StatelessWidget {
  InputCpf(this.bloc);

  final BlocIntro bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                Locale.cpf,
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          SizedBox(height: 5),
          TextField(
            controller: bloc.cpfController,
            cursorRadius: Radius.circular(100),
            //focusNode: bloc.inputFocus,
            keyboardType: TextInputType.number,
            onSubmitted: (String text) {},
            style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 40),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )),
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
