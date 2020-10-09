import 'package:flutter/material.dart';

class SnippetRotationTransition extends StatefulWidget {
  @override
  _SnippetRotationTransitionState createState() =>
      _SnippetRotationTransitionState();
}

class _SnippetRotationTransitionState extends State<SnippetRotationTransition>
    with SingleTickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 3,
  );

  AnimationController _controller;

  bool _first = true;

  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RotationTransition(
          turns: turnsTween.animate(_controller),
          child: Container(
            child: Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.all(20),
              child: FlutterLogo(),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FlatButton(
          onPressed: () {
            if (_first) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
            _first = !_first;
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
