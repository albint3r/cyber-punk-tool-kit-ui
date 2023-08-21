import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CyberContainerTwo extends StatelessWidget {
  const CyberContainerTwo({
    this.child,
    this.width = 400,
    this.height = 700,
    this.padding,
    this.primaryColorLineFrame = const Color(0xffffc200),
    this.secondaryColorLineFrame = const Color(0xffffffff),
    this.primaryColorBackground = const Color(0xffffc200),
    this.secondaryColorBackground = const Color(0xffffffff),
    this.colorBackgroundLineFrame = const Color.fromARGB(255, 33, 125, 243),
    super.key,
  });

  final Widget? child;
  final double width;
  final double height;
  final double? padding;

  final Color primaryColorLineFrame;

  final Color secondaryColorLineFrame;

  final Color primaryColorBackground;

  final Color secondaryColorBackground;

  final Color colorBackgroundLineFrame;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: RPSCustomPainter(
        primaryColorLineFrame: primaryColorLineFrame,
        secondaryColorLineFrame: secondaryColorLineFrame,
        primaryColorBackground: primaryColorBackground,
        secondaryColorBackground: secondaryColorBackground,
        colorBackgroundLineFrame: colorBackgroundLineFrame,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: EdgeInsets.all(padding ?? width * .125),
          child: child,
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter({
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
    // Background Menu

    final Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 243, 33, 233)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.bevel;
    paintStroke0.shader = ui.Gradient.linear(
      Offset(size.width * 0.50, size.height * -0.00),
      Offset(size.width * 0.50, size.height),
      [primaryColorLineFrame, secondaryColorLineFrame],
      [0.00, 1.00],
    );

    final Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width * 0.7488451, size.height);
    path_0.lineTo(size.width * 0.9503835, size.height * 0.9284341);
    path_0.lineTo(size.width * 0.9512289, size.height * 0.8582994);
    path_0.lineTo(size.width * 0.9983250, size.height * 0.8574143);
    path_0.lineTo(size.width * 0.9975000, size.height * 0.0009286);
    path_0.lineTo(size.width * 0.0029000, size.height * -0.0012286);
    path_0.close();

    canvas.drawPath(path_0, paintStroke0);

    // InsidBackground Menu

    final Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(124, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    paintFill1.shader = ui.Gradient.linear(
      Offset(size.width * 0.50, size.height * 0.01),
      Offset(size.width * 0.50, size.height * 0.99),
      [primaryColorBackground, secondaryColorBackground],
      [0.00, 1.00],
    );

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.0264109, size.height * 0.0137866);
    path_1.lineTo(size.width * 0.0287356, size.height * 0.9848954);
    path_1.lineTo(size.width * 0.7393969, size.height * 0.9862879);
    path_1.lineTo(size.width * 0.9320323, size.height * 0.9167738);
    path_1.lineTo(size.width * 0.9328399, size.height * 0.8486523);
    path_1.lineTo(size.width * 0.9778750, size.height * 0.8491714);
    path_1.lineTo(size.width * 0.9770589, size.height * 0.0158897);
    path_1.lineTo(size.width * 0.0264109, size.height * 0.0137866);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // InsidBackground Menu

    final Paint paintStroke1 = Paint()
      ..color = colorBackgroundLineFrame
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.bevel;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
