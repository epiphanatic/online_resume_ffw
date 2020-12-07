import 'package:flutter/material.dart';
import '../helpers/custom_colors.dart' as prefix0;

class AnimatedPrimaryButton extends StatefulWidget {
  /// * [shadow] whether or not to show a shadow beneath the button.
  ///
  final bool shadow;

  /// * [handler] function to fire when pressed.
  ///
  final Function handler;

  /// * [text] text to show inside button.
  ///
  final String text;

  /// The primary action button for the app, animated to pulse in then out when pressed.
  AnimatedPrimaryButton({
    Key key,
    @required this.shadow,
    @required this.handler,
    @required this.text,
  }) : super(key: key);

  _AnimatedPrimaryButtonState createState() => _AnimatedPrimaryButtonState();
}

class _AnimatedPrimaryButtonState extends State<AnimatedPrimaryButton>
    with SingleTickerProviderStateMixin {
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: Transform.scale(
        scale: _scale,
        child: Container(
          height: MediaQuery.of(context).size.height * .08,
          width: MediaQuery.of(context).size.width > 500
              ? 450
              : MediaQuery.of(context).size.width * .75,
          decoration: widget.shadow
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: prefix0.kCustomGreenColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey
                          : prefix0.kCustomGreenColor.withOpacity(.8),
                      blurRadius: 25,
                      offset: Offset(0, 35),
                      spreadRadius: -20.0,
                    ),
                  ],
                )
              : null,
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * .025,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.25,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
    // give enough time to animate but not enough time to fire navigator again if double tap.
    Future.delayed(const Duration(milliseconds: 100), () {
      widget.handler();
    });
  }
}
