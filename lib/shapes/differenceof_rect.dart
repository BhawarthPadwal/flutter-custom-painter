import 'package:flutter/material.dart';

class DifferenceofRect extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = Colors.white
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;

    // Rect bigRect = Rect.fromLTRB(10, 20, 100, 200);
    // Rect smallRect = Rect.fromLTRB(20, 40, 90, 180);
    // RRect bigRRect = RRect.fromRectXY(bigRect, 75, 25);
    // RRect smallRRect = RRect.fromRectXY(smallRect, 75, 25);
    // canvas.drawDRRect(bigRRect, smallRRect, paint);

    Rect bigRect = Rect.fromLTRB(10, 20, 200, 200);
    Rect smallRect = Rect.fromLTRB(20, 40, 90, 180);
    RRect bigRRect = RRect.fromRectXY(bigRect, 75, 25);
    RRect smallRRect = RRect.fromRectXY(smallRect, 75, 25);
    canvas.drawDRRect(bigRRect, smallRRect, paint);
    //canvas.drawColor(Colors.cyan, BlendMode.src);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
