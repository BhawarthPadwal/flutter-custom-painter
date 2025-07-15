import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/shapes/colors_painters.dart';
import 'package:flutter_custom_painter/shapes/conicto_relativeconicto.dart';
import 'package:flutter_custom_painter/shapes/differenceof_rect.dart';
import 'package:flutter_custom_painter/shapes/heart_painter.dart';
import 'package:flutter_custom_painter/shapes/move_to_line_to.dart';
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
        child: Container(
          width: 250,
          height: 250,
          color: Colors.grey.shade300,
          child: CustomPaint(painter: HeartPainter()),
        ),
      ),
    );
  }
}
