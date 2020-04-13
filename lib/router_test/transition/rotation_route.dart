import 'package:flutter/material.dart';

class RotationRoute extends PageRouteBuilder {
  final Widget page;

  RotationRoute(this.page)
      : super(
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return page;
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return RotationTransition(
        turns: CurvedAnimation(
          parent: animation,
          curve: Curves.easeInBack
        ),
        child: child,
      );
      },
    transitionDuration:Duration(seconds: 1),

  );
}
