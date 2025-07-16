import 'package:flutter/material.dart';

class HeartPainter extends CustomPainter {
  final double animationValue;

  HeartPainter({required this.animationValue});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 2
          ..color = Colors.black
          ..style = PaintingStyle.stroke;

    final List<Offset> points = <Offset>[
      Offset(size.width, size.height / 2),
      Offset(size.width / 2, size.height),
      Offset(0, size.height / 2),
    ];

    // Path path = Path();
    // path.addPolygon(points, false);
    // path.arcToPoint(
    //   Offset(size.width / 2, size.height * 0.30),
    //   radius: Radius.circular(50),
    //   clockwise: true,
    // );
    // path.arcToPoint(
    //   Offset(size.width, size.height / 2),
    //   radius: Radius.circular(50),
    //   clockwise: true,
    // );

    // Path path = Path();
    // path.moveTo(0, size.height / 2);
    // path.cubicTo(
    //   10,
    //   size.height * 0.8,
    //   size.width / 2,
    //   size.height * 0.8,
    //   size.width / 2,
    //   size.height,
    // );
    // path.cubicTo(
    //   size.width / 2,
    //   size.height * 0.8,
    //   size.width - 10,
    //   size.height * 0.8,
    //   size.width,
    //   size.height / 2,
    // );
    // path.arcToPoint(
    //   Offset((size.width / 2), size.height / 2),
    //   radius: Radius.circular(10),
    //   clockwise: false,
    // );
    // path.arcToPoint(
    //   Offset(0, size.height / 2),
    //   radius: Radius.circular(10),
    //   clockwise: false,
    // );

    Path path = Path();
    path.moveTo(10, size.height / 2);
    path.cubicTo(
      40,
      size.height * 0.75,
      size.width / 2,
      size.height,
      size.width / 2,
      size.height,
    );
    path.cubicTo(
      size.width / 2,
      size.height,
      size.width - 40,
      size.height * 0.75,
      size.width - 10,
      size.height / 2,
    );
    path.arcToPoint(
      Offset((size.width / 2), size.height * 0.25),
      radius: Radius.elliptical(10, 11),
      clockwise: false,
    );
    path.arcToPoint(
      Offset(10, size.height / 2),
      radius: Radius.elliptical(10, 11),
      clockwise: false,
    );

    // Animate using PathMetric
    final pathMetrics = path.computeMetrics();
    final animatedPath = Path();

    for (final metric in pathMetrics) {
      final length = metric.length * animationValue;
      animatedPath.addPath(metric.extractPath(0, length), Offset.zero);
    }

    canvas.drawPath(animatedPath, paint);
  }

  @override
  bool shouldRepaint(covariant HeartPainter oldDelegate) =>
      oldDelegate.animationValue != animationValue;
}
