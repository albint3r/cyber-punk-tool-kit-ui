import 'package:flutter/material.dart';

import 'widgets/single_cyber_container.dart';
/// A widget that creates a visually appealing diagonal cyber button with animations.
///
/// The [CyberButton] widget uses gradient backgrounds and diagonal elements to create
/// an engaging button with animations. It supports tap interactions.
class CyberButton extends StatefulWidget {
  /// Creates a [CyberButton] widget.
  ///
  /// The button appearance and behavior can be customized using various properties:
  /// - [child]: The child widget contained within the button.
  /// - [height]: The height of the button.
  /// - [width]: The width of the button.
  /// - [primaryColorBigContainer], [secondaryColorBigContainer]: Gradient colors for the main container.
  /// - [primaryColorSmallContainer], [secondaryColorSmallContainer]: Gradient colors for the detail containers.
  /// - [bottomBorder]: Width of the bottom border.
  /// - [onTap]: Callback function when the button is tapped.
  const CyberButton({
    this.child,
    this.height = 50,
    this.width = 200,
    this.primaryColorBigContainer = Colors.orange,
    this.secondaryColorBigContainer = Colors.purple,
    this.primaryColorSmallContainer = Colors.white60,
    this.secondaryColorSmallContainer = Colors.white10,
    this.bottomBorder = 3,
    this.onTap,
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
  final void Function()? onTap;

  @override
  State<CyberButton> createState() => _CyberButtonState();
}

class _CyberButtonState extends State<CyberButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animationBottomFrame;
  late final Animation<double> _animationTopFrame;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );

    _animationBottomFrame = Tween<double>(begin: widget.width, end: 0).animate(
      _controller,
    );
    _animationTopFrame = Tween<double>(begin: 0, end: widget.width).animate(
      _controller,
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ClipPath(
          clipper: CustomDiagonalClipPath(),
          child: Stack(
            children: [
              SizedBox(
                width: widget.width,
                height: widget.height,
              ),
              // MAIN CONTAINER
              Positioned(
                top: 5,
                bottom: 5,
                left: 0,
                child: InkWell(
                  onTap: widget.onTap,
                  child: SingleDiagonalContainer(
                    width: widget.width,
                    height: widget.height,
                    primaryColor: widget.primaryColorBigContainer,
                    secondaryColor: widget.secondaryColorBigContainer,
                    bottomBorder: 0,
                    child: widget.child,
                  ),
                ),
              ),
              // Bottom DETAIL CONTAINER
              Positioned(
                left: _animationBottomFrame.value,
                bottom: 0,
                child: SingleDiagonalContainer(
                  height: widget.height / 4,
                  width: widget.width,
                  primaryColor: widget.primaryColorSmallContainer,
                  secondaryColor: widget.secondaryColorSmallContainer,
                  bottomBorder: widget.bottomBorder,
                ),
              ),
              // Top DETAIL CONTAINER
              Positioned(
                left: _animationTopFrame.value * .50,
                right: _animationTopFrame.value * .05,
                top: 0,
                child: SingleDiagonalContainer(
                  height: widget.height / 7,
                  width: widget.width,
                  primaryColor: widget.primaryColorSmallContainer,
                  secondaryColor: widget.secondaryColorSmallContainer,
                  bottomBorder: 0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
