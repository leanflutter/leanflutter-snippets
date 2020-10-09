import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class SnippetCheckboxListTile extends StatefulWidget {
  @override
  _SnippetCheckboxListTileState createState() =>
      _SnippetCheckboxListTileState();
}

class _SnippetCheckboxListTileState extends State<SnippetCheckboxListTile> {
  // double timeDilation = 0;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Animate Slowly'),
      value: timeDilation != 1.0,
      onChanged: (bool value) {
        setState(() {
          timeDilation = value ? 10.0 : 1.0;
        });
      },
      secondary: const Icon(Icons.hourglass_empty),
    );
  }
}
