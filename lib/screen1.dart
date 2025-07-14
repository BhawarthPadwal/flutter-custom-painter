import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/shapes/colors_painters.dart';
import 'package:flutter_custom_painter/shapes/differenceof_rect.dart';
import 'package:flutter_custom_painter/shapes/oval_painter.dart';
import 'package:flutter_custom_painter/shapes/path_painter.dart';
import 'package:flutter_custom_painter/shapes/points_painter.dart';
import 'package:flutter_custom_painter/shapes/rectangle_painter.dart';
import 'package:flutter_custom_painter/shapes/rounded_rectangle_painter.dart';
import 'package:flutter_custom_painter/shapes/triangular_shape_painter.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: CustomPaint(painter: TriangularShapePainter()),
        ),
      ),
    );
  }
}
