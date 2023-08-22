import 'dart:ui';

import 'package:flutter/material.dart';
/// A widget that creates a single diagonal container with gradient backgrounds and a blurred effect.
///
/// The [SingleDiagonalContainer] widget draws a container with a single diagonal line and supports
/// gradient backgrounds, a blurred effect, and border styling.
class SingleDiagonalContainer extends StatelessWidget {
  /// Creates a [SingleDiagonalContainer] instance.
  ///
  /// The [child] is the widget placed within the container.
  /// The [height] and [width] define the dimensions of the container.
  /// The [primaryColor] and [secondaryColor] define the gradient colors of the background.
  /// The [bottomBorder] defines the width of the bottom border.
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
