import 'dart:math';

import 'package:flutter/material.dart';

class TransformRoute extends PageRouteBuilder {
  final Widget page;

  TransformRoute(this.page)
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
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.0001)
            ..rotateX(animation.value * pi * 2)
            ..rotateY(animation.value * pi * 2),
          alignment: FractionalOffset.center,
          child: child,
        ),
      );
    },
    transitionDuration:Duration(seconds: 2),

  );
}
