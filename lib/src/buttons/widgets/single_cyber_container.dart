import 'dart:ui';

import 'package:flutter/material.dart';

class SingleDiagonalContainer extends StatelessWidget {
  const SingleDiagonalContainer({
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
      clipper: CustomDiagonalClipPath(),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 8,
          sigmaY: 8,
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
                primaryColor.withOpacity(.2),
                secondaryColor.withOpacity(.2),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.3),
                blurRadius: 10,
                spreadRadius: 15,
              )
            ],
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}

class CustomDiagonalClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.1000000, 0);
    path_0.lineTo(size.width * -0.0020000, size.height);
    path_0.lineTo(size.width * 0.9000000, size.height);
    path_0.lineTo(size.width, 0);

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
