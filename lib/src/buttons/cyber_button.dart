import 'package:flutter/material.dart';

import 'widgets/single_cyber_container.dart';

class CyberContainer extends StatelessWidget {
  const CyberContainer({
    this.child,
    this.height = 50,
    this.width = 200,
    this.primaryColorBigContainer = Colors.orange,
    this.secondaryColorBigContainer = Colors.purple,
    this.primaryColorSmallContainer = Colors.white60,
    this.secondaryColorSmallContainer = Colors.white10,
    this.bottomBorder = 3,
    super.key,
  });

  final Widget? child;
  final double height;
  final double width;
  final Color primaryColorBigContainer;
  final Color secondaryColorBigContainer;
  final Color primaryColorSmallContainer;
  final Color secondaryColorSmallContainer;
  final double bottomBorder;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomDiagonalClipPath(),
      child: Stack(
        children: [
          SizedBox(
            width: width,
            height: height,
          ),
          Positioned(
            top: 5,
            bottom: 5,
            left: 0,
            child: SizedBox(
              child: SingleDiagonalContainer(
                width: width,
                height: height,
                primaryColor: primaryColorBigContainer,
                secondaryColor: secondaryColorBigContainer,
                bottomBorder: 0,
                child: child,
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: SingleDiagonalContainer(
              height: height / 4,
              width: width,
              primaryColor: primaryColorSmallContainer,
              secondaryColor: secondaryColorSmallContainer,
              bottomBorder: bottomBorder,
            ),
          ),
          Positioned(
            left: width * .50,
            right: width * .05,
            top: 0,
            child: SingleDiagonalContainer(
              height: height / 7,
              width: width,
              primaryColor: primaryColorSmallContainer,
              secondaryColor: secondaryColorSmallContainer,
              bottomBorder: 0,
            ),
          ),
        ],
      ),
    );
  }
}
