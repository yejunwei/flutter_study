import 'package:flutter/material.dart';

class ScaleRotationRoute extends PageRouteBuilder {
  final Widget page;

  ScaleRotationRoute(this.page)
      : super(
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return page;
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return ScaleTransition(
        scale: animation,
        child: RotationTransition(
          turns: Tween(
            begin: 0.0,
            end: 1.0
          ).animate(
            CurvedAnimation(parent: animation, curve: Curves.linear)
          ),
          child: child,
        ),
      );
    },
    transitionDuration:Duration(seconds: 1),

  );
}
