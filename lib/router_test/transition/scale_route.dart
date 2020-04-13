import 'package:flutter/material.dart';

class ScaleRoute extends PageRouteBuilder {
  final Widget page;

  ScaleRoute(this.page)
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
            alignment: Alignment.bottomLeft,
            scale: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
            child: child,
          );
        },
        transitionDuration:Duration(seconds: 1),

  );
}