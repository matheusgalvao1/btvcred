part of 'main.dart';

class Picker extends StatefulWidget {
  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  int _currentValue = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NumberPicker(
        minValue: 1,
        maxValue: 10,
        step: 1,
        value: _currentValue,
        itemHeight: 100,
        axis: Axis.horizontal,

        
        textStyle: Theme.of(context).textTheme.headline1,
        selectedTextStyle: Theme.of(context).textTheme.headline1.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 50,
            ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black26),
        ),
        onChanged: (value) => setState(() => _currentValue = value),
      ),
    );
  }
}
