import 'dart:ui';

import 'package:flutter/material.dart';

class SingleCyberContainer extends StatelessWidget {
  const SingleCyberContainer({
    this.child,
    required this.height,
    required this.width,
    required this.primaryColor,
    required this.secondaryColor,
    required this.bottomBorder,
    super.key,
  });

  final Widget? child;
  final double height;
  final double width;
  final Color primaryColor;
  final Color secondaryColor;
  final double bottomBorder;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15,
          sigmaY: 15,
        ),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: bottomBorder,
                  color: primaryColor.withOpacity(.5),
                ),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  primaryColor.withOpacity(.3),
                  secondaryColor.withOpacity(.3),
                ],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 25,
                    spreadRadius: -5)
              ]),
          child: child,
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0408333, size.height * -0.0014286);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width * 0.9576667, size.height * 0.9991429);
    path_0.lineTo(size.width * 1.0005000, size.height * -0.0017143);

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
