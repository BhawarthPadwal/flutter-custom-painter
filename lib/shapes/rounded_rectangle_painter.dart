import 'package:flutter/material.dart';

class RoundedRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = Colors.white
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(20, 20, 200, 250),
        Radius.circular(20),
      ),
      paint,
    );
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(40, 40, 200, 250),
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      paint,
    );
    canvas.drawRRect(
      RRect.fromRectXY(Rect.fromLTWH(60, 60, 200, 250), 15, 75),
      paint,
    );
    canvas.drawRRect(
      RRect.fromRectXY(Rect.fromLTWH(80, 80, 200, 250), 75, 15),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
