part of 'main.dart';

class ThemeButton extends StatefulWidget {
  @override
  _ThemeButtonState createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            blocTheme.setThemeDark(false);
          },
          highlightColor: Colors.transparent,
          child: Icon(
            Icons.light_mode_rounded,
            size: 40,
            color: !blocTheme.themeDark
                ? Theme.of(context).colorScheme.primary
                : null,
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: () {
            blocTheme.setThemeDark(true);
          },
          highlightColor: Colors.transparent,
          child: Icon(
            Icons.dark_mode_rounded,
            size: 40,
            color: blocTheme.themeDark
                ? Theme.of(context).colorScheme.primary
                : null,
          ),
        ),
      ],
    );
  }
}
