import 'package:flutter/material.dart';

class ConictoRelativeconicto extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 2
          ..color = Colors.black
          ..style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(0, size.height / 2);
    // path.conicTo(size.width / 4, 0, size.width, size.height / 2, 1);
    path.cubicTo(
      size.height / 2,
      size.height * 0.9,
      size.height / 2,
      size.height * 0.1,
      size.width,
      size.height / 2,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
