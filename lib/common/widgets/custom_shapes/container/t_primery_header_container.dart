import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_shapes/container/t_circular_container.dart';
import 'package:tstore/common/widgets/custom_shapes/curve_edges/curve_edge_widget.dart';
import 'package:tstore/utils/constants/colors.dart';

class TPrimeryHeaderWidget extends StatelessWidget {
  const TPrimeryHeaderWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        height: 350,
        width: double.infinity,
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCirculartContainer(
                  backgroudColor: TColors.white.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: TCirculartContainer(
                  backgroudColor: TColors.white.withOpacity(0.1),
                )),
            child,
          ],
        ),
      ),
    );
  }
}