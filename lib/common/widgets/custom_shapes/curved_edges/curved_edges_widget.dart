import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/containers/circular_pattern.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdge(),
      child: Container(
        color: MyAppColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          // height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CircularPattern(
                    backgroundcolor: MyAppColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CircularPattern(
                    backgroundcolor: MyAppColors.textWhite.withOpacity(0.1),
                  )),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
