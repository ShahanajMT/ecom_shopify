import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_shapes/curve_edges/curve_edges.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurveEdges(),
      child: child,
    );
  }
}