import 'package:cyber_glass_container/src/widgets/single_cyber_container.dart';
import 'package:flutter/material.dart';

class CyberContainer extends StatelessWidget {
  const CyberContainer({
    this.child,
    this.height = 50,
    this.width = 500,
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
      clipper: CustomClipPath(),
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
              child: SingleCyberContainer(
                width: width,
                height: height,
                primaryColor: primaryColorBigContainer,
                secondaryColor: secondaryColorBigContainer,
                bottomBorder: bottomBorder,
                child: child,
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: SingleCyberContainer(
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
            child: SingleCyberContainer(
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
