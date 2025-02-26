import 'package:flutter/material.dart';

class CustomCurvedEdge extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);

    // first edge 
    final firstCurve = Offset(0, size.height-20);
    final lastCurve = Offset(30, size.height-20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    // line 
    final secondCurve = Offset(0, size.height-20);
    final secondlastCurve = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(secondCurve.dx, secondCurve.dy, secondlastCurve.dx, secondlastCurve.dy);
    
    // last edge
    final thirdCurve = Offset(size.width, size.height-20);
    final thirdlastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdCurve.dx, thirdCurve.dy, thirdlastCurve.dx, thirdlastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}