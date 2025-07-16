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

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.grey.shade300,
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return CustomPaint(
                painter: HeartPainter(animationValue: animation.value),
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
