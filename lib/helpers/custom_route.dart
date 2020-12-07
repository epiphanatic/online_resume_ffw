import 'package:flutter/material.dart';

/// For single route transitions
class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({
    WidgetBuilder builder,
    RouteSettings settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (settings.name == '') {
      return child;
    }
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

/// For general theme
class CustomPageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (route.settings.name == '') {
      return child;
    }
    // return RotationTransition(
    //   child: child,
    //   turns: animation,
    // );
    // var begin = Offset(0.0, 1.0);
    // var end = Offset.zero;
    // var tween = Tween(begin: begin, end: end);
    // var offsetAnimation = animation.drive(tween);
    // return SlideTransition(
    //   position: offsetAnimation,
    //   child: child,
    // );
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
