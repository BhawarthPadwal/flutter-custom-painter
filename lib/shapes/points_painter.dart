import 'dart:ui';

import 'package:flutter/material.dart';

class PointsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 4
          ..color = Colors.black;

    final List<Offset> points = <Offset>[
      Offset(0, size.height / 2),
      Offset(size.width / 2, 0),
      Offset(size.width, size.height / 2),
    ];

    canvas.drawPoints(PointMode.polygon, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
