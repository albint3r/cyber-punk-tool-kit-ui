import 'dart:ui' as ui;

import 'package:flutter/material.dart';
/// A custom painter that creates a visually appealing design with gradient backgrounds and lines.
///
/// This painter draws a complex design with multiple gradient backgrounds and lines.
/// It is used within the [CyberContainerOne] widget to create a visually engaging UI element.
class RPSCustomPainterOne extends CustomPainter {
  /// Creates a [RPSCustomPainterOne] instance.
  ///
  /// The [primaryColorLineFrame] and [secondaryColorLineFrame] define the gradient for the lines.
  /// The [primaryColorBackground] and [secondaryColorBackground] define the gradient for the background.
  /// The [colorBackgroundLineFrame] defines the color of the line frames within the background.
  RPSCustomPainterOne({
    required this.primaryColorLineFrame,
    required this.secondaryColorLineFrame,
    required this.primaryColorBackground,
    required this.secondaryColorBackground,
    required this.colorBackgroundLineFrame,
  });

  final Color primaryColorLineFrame;

  final Color secondaryColorLineFrame;

  final Color primaryColorBackground;

  final Color secondaryColorBackground;

  final Color colorBackgroundLineFrame;

  @override
  void paint(Canvas canvas, Size size) {
    // LineFrame

    final Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(0, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    final Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width * 0.1250000, 0);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.1666667);
    path_0.lineTo(size.width * 0.6250000, size.height * 0.1666667);
    path_0.lineTo(size.width * 0.7500000, 0);
    path_0.lineTo(size.width * 0.8750000, 0);
    path_0.lineTo(size.width, size.height * 0.1700000);
    path_0.lineTo(size.width * 1.0004000, size.height * 0.9977667);
    path_0.lineTo(size.width * 0.1250000, size.height * 0.9966667);
    path_0.lineTo(size.width * 0.0025000, size.height * 0.8333333);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // LineFrame

    final Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.square
      ..strokeJoin = StrokeJoin.bevel;
    paintStroke0.shader = ui.Gradient.linear(
      Offset(size.width * 0.50, 0),
      Offset(size.width * 0.50, size.height * 1.00),
      [
        primaryColorLineFrame,
        secondaryColorLineFrame,
      ],
      [0.00, 1.00],
    );

    canvas.drawPath(path_0, paintStroke0);

    // InsideBackGround

    final Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(120, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    paintFill1.shader = ui.Gradient.linear(
      Offset(size.width * 0.50, size.height * 0.03),
      Offset(size.width * 0.50, size.height * 0.97),
      [
        primaryColorBackground,
        secondaryColorBackground,
      ],
      [0.00, 1.00],
    );

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.0259750, size.height * 0.0346000);
    path_1.lineTo(size.width * 0.1233000, size.height * 0.0324000);
    path_1.lineTo(size.width * 0.2516500, size.height * 0.2035667);
    path_1.lineTo(size.width * 0.6241750, size.height * 0.2013000);
    path_1.lineTo(size.width * 0.7516500, size.height * 0.0279667);
    path_1.lineTo(size.width * 0.8750000, size.height * 0.0290333);
    path_1.lineTo(size.width * 0.9764500, size.height * 0.1677667);
    path_1.lineTo(size.width * 0.9725000, size.height * 0.9687333);
    path_1.lineTo(size.width * 0.1233500, size.height * 0.9654000);
    path_1.lineTo(size.width * 0.0209250, size.height * 0.8311000);
    path_1.lineTo(size.width * 0.0259750, size.height * 0.0346000);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // InsideBackGround

    final Paint paintStroke1 = Paint()
      ..color = colorBackgroundLineFrame
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.square
      ..strokeJoin = StrokeJoin.bevel;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
