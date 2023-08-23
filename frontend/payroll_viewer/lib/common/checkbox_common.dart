import 'package:flutter/material.dart';

typedef CheckboxChangedCallback = void Function(bool isChecked);
class CheckboxCommon extends StatefulWidget {
  final CheckboxChangedCallback onChanged;

  const CheckboxCommon({required this.onChanged, Key? key}) : super(key: key);

  @override
  State<CheckboxCommon> createState() => _CheckboxCommonState();
}

class _CheckboxCommonState extends State<CheckboxCommon> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xFFffa64a);
      }
      return Color(0xFFffa64a);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
        widget.onChanged(isChecked);
      },
    );
  }
}