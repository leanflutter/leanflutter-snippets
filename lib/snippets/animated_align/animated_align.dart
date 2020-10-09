import 'package:flutter/material.dart';

class SnippetAnimatedAlign extends StatefulWidget {
  @override
  _SnippetAnimatedAlignState createState() => _SnippetAnimatedAlignState();
}

class _SnippetAnimatedAlignState extends State<SnippetAnimatedAlign> {
  AlignmentGeometry _alignment = Alignment.topRight;

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: AnimatedAlign(
            alignment: _alignment,
            curve: Curves.ease,
            duration: Duration(seconds: 3),
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            _changeAlignment();
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
