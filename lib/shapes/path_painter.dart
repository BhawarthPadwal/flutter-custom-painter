import 'package:flutter/material.dart';
import 'dart:math' as math;

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 2
          ..color = Colors.black
          ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    Rect rectOne = Rect.fromLTRB(10, 20, 100, 200);
    Rect rectTwo = Rect.fromCenter(center: center, width: 100, height: 200);

    Path path = Path();
    path.addRect(rectOne);
    path.addRect(rectTwo);
    path.addArc(rectTwo, 0, math.pi / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
