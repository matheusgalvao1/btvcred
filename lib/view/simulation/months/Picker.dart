part of 'main.dart';

class Picker extends StatefulWidget {
  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 3,
            ),
          ),
          child: CupertinoPicker(
            itemExtent: 60,
            onSelectedItemChanged: (int index) {},
            diameterRatio: 1,
            magnification: 1.3,
            selectionOverlay: CupertinoPickerDefaultSelectionOverlay(),
            children: List.generate(
              blocSimulator.parcelasFed.length,
              (index) => Text(
                blocSimulator.parcelasFed[index].toString() + "x",
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(fontSize: 35),
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
                //blocSimulator.setMonths(_currentValue);
                blocSimulator.nextPage();
              },
            ),
          ],
        ),
      ],
    );
  }
}



/*
Container(
          width: MediaQuery.of(context).size.width * .7,
          child: NumberPicker(
            minValue: 1,
            maxValue: 10,
            textMapper: (_currentValue) => ('$_currentValue'+ 'x'),
            step: 1,
            value: _currentValue,
            itemHeight: 100,
            axis: Axis.vertical,
            itemCount: 3,
            textStyle: Theme.of(context).textTheme.headline1,
            selectedTextStyle: Theme.of(context).textTheme.headline1.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 50,
                ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 3,
              ),
            ),
            onChanged: (value) => setState(() => _currentValue = value),
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
                blocSimulator.setMonths(_currentValue);
                blocSimulator.nextPage();
              },
            ),
          ],
        ),
      ],
*/