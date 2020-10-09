import 'package:flutter/material.dart';

class SnippetDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(title: Text('Item1')),
        Divider(),
        ListTile(
          title: Text('Item2'),
        ),
        Divider(),
        ListTile(
          title: Text('Item3'),
        ),
      ],
    );
  }
}
