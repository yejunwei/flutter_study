import 'dart:math';

import 'package:flutter/material.dart';

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;

  EnterExitRoute(this.enterPage, this.exitPage)
      : super(
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return exitPage;
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return Stack(
        children: <Widget>[
            SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0.0,0.0),
                end: Offset(-1.0,0.0),
              ).animate(CurvedAnimation(parent: animation,curve: Curves.easeIn)),
              child: enterPage,
            ),
          SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1.0,0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation,curve: Curves.easeIn)),
            child: exitPage,
          )


        ],
      );


    },
    transitionDuration:Duration(seconds: 2),

  );
}
