import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ColorsPainters extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..shader = ui.Gradient.linear(
            Offset.zero,
            Offset(size.width, size.height),
            [Colors.indigo, Colors.indigoAccent, Colors.lightBlue],
            [0.0, 0.5, 1.0],
          );
    canvas.clipRect(Offset.zero & size);
    canvas.drawPaint(paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
