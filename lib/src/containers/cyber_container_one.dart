import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CyberContainerOne extends StatelessWidget {
  const CyberContainerOne({
    this.child,
    this.width = 400,
    this.height = 300,
    super.key,
  });

  final Widget? child;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      //Y
      size: Size(width, height),
      // ou can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    // BackGround

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

    // BackGround

    final Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.square
      ..strokeJoin = StrokeJoin.bevel;
    paintStroke0.shader = ui.Gradient.linear(
        Offset(size.width * 0.50, 0),
        Offset(size.width * 0.50, size.height * 1.00),
        [Color(0xffffc200), Color(0xffffffff)],
        [0.00, 1.00]);

    canvas.drawPath(path_0, paintStroke0);

    // InsideBackGround

    final Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(51, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    paintFill1.shader = ui.Gradient.linear(
        Offset(size.width * 0.50, size.height * 0.03),
        Offset(size.width * 0.50, size.height * 0.97),
        [Color(0xffffc700), Color(0xffffffff)],
        [0.00, 1.00]);

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
      ..color = const Color.fromARGB(255, 33, 125, 243)
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
