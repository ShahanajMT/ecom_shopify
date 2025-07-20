import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currenySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrought = false,
  });

  final String currenySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrought;

  @override
  Widget build(BuildContext context) {
    return Text(currenySign + price,
        maxLines: maxLines,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrought ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrought ? TextDecoration.lineThrough : null));
  }
}