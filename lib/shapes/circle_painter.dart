import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = Colors.white
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, paint);
    canvas.drawCircle(Offset(size.width / 4, size.height / 4), 50, paint);
    canvas.drawCircle(Offset(size.width * 0.75, size.height * 0.25), 50, paint);
    canvas.drawCircle(Offset(size.width * 0.25, size.height * 0.75), 50, paint);
    canvas.drawCircle(Offset(size.width * 0.75, size.height * 0.75), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}