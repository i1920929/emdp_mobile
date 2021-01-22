import 'package:flutter/material.dart';

class TopLeftClipper extends CustomClipper<Path> {
  int n = 50;
  @override
  getClip(Size size) {
    var fcp = Offset(size.width / 2.5, size.height);
    var fep = Offset(size.width - n * 1.65, size.height - n * 1.65);

    var scp = Offset(size.width, size.height / 2.5);
    var sep = Offset(size.width - n, 0.0);
    var path = new Path();
    path.lineTo(0.0, size.height - n);

    path.quadraticBezierTo(fcp.dx, fcp.dy, fep.dx, fep.dy);
    path.quadraticBezierTo(scp.dx, scp.dy, sep.dx, sep.dy);

    path.lineTo(0.0, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
