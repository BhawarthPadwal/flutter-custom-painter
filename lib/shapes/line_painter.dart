import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 2
          ..color = Colors.black;
    canvas.drawLine(Offset(20, 20), Offset(size.width - 20, 20), paint);
    canvas.drawLine(
      Offset(20, size.height - 20),
      Offset(size.width - 20, size.height - 20),
      paint,
    );
    canvas.drawLine(Offset.zero, Offset(size.width, 0), paint);
    canvas.drawLine(Offset.zero, Offset(0, size.height), paint);
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, size.height),
      paint,
    );
    canvas.drawLine(
      Offset(size.width, 0),
      Offset(size.width, size.height),
      paint,
    );
    canvas.drawLine(Offset.zero, Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
    //canvas.drawLine(Offset(size.height, 0), Offset(size.height, 0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}