import 'package:flutter/material.dart';

class MoveToLineTo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 2
          ..color = Colors.black
          ..style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(10, 0);
    path.lineTo(size.width / 2, 0);
    path.relativeMoveTo(10, 0);
    path.relativeLineTo(50, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
