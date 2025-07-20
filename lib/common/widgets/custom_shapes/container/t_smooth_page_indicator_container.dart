import 'package:flutter/material.dart';

class TSmoothPageIndicatorContainer extends StatelessWidget {
  const TSmoothPageIndicatorContainer({
    Key? key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    required this.margin,
    this.padding = 0,
    this.child,
    required this.backgroudColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? margin;
  final double padding;
  final Widget? child;
  final Color backgroudColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroudColor),
      child: child,
    );
  }
}