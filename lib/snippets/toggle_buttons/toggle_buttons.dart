import 'package:flutter/material.dart';

class SnippetToggleButtons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SnippetToggleButtonsState();
}

class _SnippetToggleButtonsState extends State<SnippetToggleButtons> {
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.call),
        Icon(Icons.cake),
      ],
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
      },
      isSelected: isSelected,
    );
  }
}
