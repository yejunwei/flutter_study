import 'package:flutter/material.dart';

class RoundedBorderWidget extends StatelessWidget{

  final Widget child;
  final double height;

  final double borderWidth;
  final double borderRadius;

  final Color borderColor;
  final Color contentColor;

  final EdgeInsets padding;

  RoundedBorderWidget({
    this.child,
    this.height,
    this.borderWidth,
    this.borderRadius,
    this.borderColor,
    this.contentColor,
    this.padding

  });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width:  borderWidth),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius-borderWidth),
        child: Container(
          padding: padding,
          color: contentColor,
          child: Align(
            widthFactor: 1,
            heightFactor: 1,
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}