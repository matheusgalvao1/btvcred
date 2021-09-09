part of 'main.dart';

class Picker extends StatefulWidget {
  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlocSimulator>(
        builder: (BuildContext context, BlocSimulator bloc) {
      return Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 3,
              ),
            ),
            child: CupertinoPicker(
              itemExtent: 50,
              onSelectedItemChanged: (int index) {},
              scrollController: bloc.pickerController,
              diameterRatio: 1,
              magnification: 1.3,
              selectionOverlay: CupertinoPickerDefaultSelectionOverlay(),
              children: List.generate(
                bloc.listGeneric.length,
                (index) => Text(
                  bloc.listGeneric[index].toString() + "x",
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontSize: 35,
                      ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                text: 'Continuar',
                width: 150,
                onTap: () {
                  bloc.setMonths();
                  bloc.calculateResult();
                  bloc.setShowTotal(value: false);
                  bloc.nextPage();
                },
              ),
            ],
          ),
        ],
      );
    });
  }
}


