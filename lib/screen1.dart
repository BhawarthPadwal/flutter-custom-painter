import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/shapes/oval_painter.dart';
import 'package:flutter_custom_painter/shapes/rectangle_painter.dart';
import 'package:flutter_custom_painter/shapes/rounded_rectangle_painter.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.black;

    canvas.drawCircle(Offset(center.width, center.height), 10.0, paint);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.grey.shade300,
          child: CustomPaint(
            painter: RoundedRectanglePainter(),
            size: Size(300, 400),
          ),
        ),
      ),
    );
  }
}
