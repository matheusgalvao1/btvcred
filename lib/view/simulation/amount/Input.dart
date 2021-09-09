part of 'main.dart';

class InputAmount extends StatelessWidget {
  final BlocSimulator bloc;

  const InputAmount(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autofocus: true,
        cursorRadius: Radius.circular(100),
        controller: bloc.amountController,
        keyboardType: TextInputType.number,
        focusNode: bloc.inputFocus,
        onSubmitted: (String text) {
          bloc.setAmount(bloc.amountController.numberValue);
          bloc.nextPage();
        },
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
    );
  }
}
