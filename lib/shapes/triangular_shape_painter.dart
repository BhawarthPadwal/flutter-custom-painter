import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class TriangularShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 2
          ..color = Colors.black
          ..style = PaintingStyle.stroke;

    final List<Offset> points = <Offset>[
      Offset(0, size.height / 2),
      Offset(size.width / 2, 0),
      Offset(size.width, size.height / 2),
    ];

    //canvas.drawPoints(PointMode.polygon, points, paint);
    Path path = Path();
    path.addPolygon(points, false);
    path.arcToPoint(
      Offset(size.width / 2, size.height / 2),
      radius: Radius.circular(120),
      clockwise: false,
    );
    path.arcToPoint(Offset(0, size.height / 2), radius: Radius.circular(120));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
