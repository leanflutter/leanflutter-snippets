import 'package:flutter/material.dart';

class SnippetDefaultTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 60,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        child: Text('Flutter'),
      ),
    );
  }
}
