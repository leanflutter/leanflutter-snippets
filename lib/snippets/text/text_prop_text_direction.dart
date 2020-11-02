import 'package:flutter/material.dart';

class SnippetTextPropTextDirection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          _DemoCard(
            label: 'TextDirection.ltr',
            child: Text(
              'The quick brown fox jumps over the lazy dog',
              textDirection: TextDirection.ltr,
            ),
          ),
          _DemoCard(
            label: 'TextDirection.rtl',
            child: Text(
              'The quick brown fox jumps over the lazy dog',
              textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
    );
  }
}

class _DemoCard extends StatelessWidget {
  final String label;
  final Widget child;

  const _DemoCard({Key key, this.label, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(fontSize: 12)),
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 2),
          color: Colors.blue[50],
          width: 200,
          child: child,
        )
      ],
    );
  }
}
