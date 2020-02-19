import 'package:flutter/material.dart';

class BouncedButton extends StatefulWidget {
  BouncedButton({this.child});
  final Widget child;

  @override
  _BouncedButtonState createState() => _BouncedButtonState(child: child);
}

class _BouncedButtonState extends State<BouncedButton> with SingleTickerProviderStateMixin {
  _BouncedButtonState({this.child});
  final Widget child;

  double _scale;
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Transform.scale(
        scale: _scale,
        child: child,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
      lowerBound: 0.0,
      upperBound: 0.1,
    )
      ..addListener(() { setState(() {});});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }

  void _onTapCancel() {
    _controller.reverse();
  }
}