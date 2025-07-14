import 'package:flutter/material.dart';

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = Colors.white
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawRect(
      Rect.fromCenter(center: center, width: 150, height: 150),
      paint,
    );
    canvas.drawRect(Rect.fromCircle(center: center, radius: 40), paint);
    canvas.drawRect(Rect.fromLTRB(20, 20, 280, 380), paint);
    canvas.drawRect(Rect.fromLTWH(40, 40, 220, 320), paint);
    canvas.drawRect(Rect.fromPoints(Offset(60, 60), Offset(240, 300)), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}