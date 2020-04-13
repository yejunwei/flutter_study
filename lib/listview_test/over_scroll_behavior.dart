import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverScrollBehavior extends ScrollBehavior{
  Widget buildViewPortChrome(BuildContext context, Widget child, AxisDirection axisDirection){
    return GlowingOverscrollIndicator(
      child: child,
      showLeading: false,
      showTrailing: true,
      axisDirection: axisDirection,
      color: Theme.of(context).accentColor,
    );

  }
}