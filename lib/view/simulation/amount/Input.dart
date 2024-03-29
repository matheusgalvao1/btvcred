part of 'main.dart';

class InputAmount extends StatelessWidget {
  final BlocSimulator bloc;

  const InputAmount(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autofocus: true,
        controller: bloc.amountController,
        cursorRadius: Radius.circular(100),
        focusNode: bloc.inputFocus,
        keyboardType: TextInputType.number,
        onSubmitted: (String text) {
          bloc.validateInput(bloc.amountController.numberValue, context);
        },
        style: Theme.of(context).textTheme.headline1.copyWith(fontSize: MediaQuery.of(context).size.height*.05),
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
