import 'package:flutter/material.dart';

class BouncedButton extends StatefulWidget {
  BouncedButton({this.child, this.onTap});

  final Widget child;
  final Function onTap;

  @override
  _BouncedButtonState createState() => _BouncedButtonState(child: child, onTap: onTap);
}

class _BouncedButtonState extends State<BouncedButton>
    with SingleTickerProviderStateMixin {
  _BouncedButtonState({this.child, this.onTap});

  final Widget child;
  final Function onTap;

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
    )..addListener(() {
        setState(() {});
      });
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
    onTap();
  }

  void _onTapCancel() {
    _controller.reverse();
  }
}
