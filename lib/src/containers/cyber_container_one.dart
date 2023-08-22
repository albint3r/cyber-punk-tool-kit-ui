import 'package:flutter/material.dart';

import 'custom_painters/rps_custom_painter_one.dart';

/// A widget that displays a visually appealing container with animations.
///
/// The [CyberContainerOne] widget uses [RPSCustomPainterOne] to create a visually appealing
/// animated container. It supports gradient backgrounds and animated color transitions.
class CyberContainerOne extends StatefulWidget {
  /// Creates a [CyberContainerOne] widget.
  ///
  /// The container's appearance and animation can be customized using various properties:
  /// - [child]: The child widget contained within the container.
  /// - [width]: The width of the container.
  /// - [height]: The height of the container.
  /// - [horizontalPadding], [topPadding], [bottomPadding]: Padding values for the child.
  /// - [isNotAnimated]: If `true`, animations are disabled.
  /// - [animationDurationSecs]: Duration in seconds for the animation.
  /// - [primaryColorLineFrame], [secondaryColorLineFrame]: Gradient colors for lines.
  /// - [primaryColorBackground], [secondaryColorBackground]: Gradient colors for background.
  /// - [colorBackgroundLineFrame]: Color for line frames within the background.
  const CyberContainerOne({
    this.child,
    this.width = 400,
    this.height = 300,
    this.horizontalPadding,
    this.topPadding,
    this.bottomPadding,
    this.primaryColorLineFrame = const Color(0xffffc200),
    this.secondaryColorLineFrame = const Color(0xffffffff),
    this.primaryColorBackground = const Color(0xffffc200),
    this.secondaryColorBackground = const Color(0xffa300f6),
    this.colorBackgroundLineFrame = const Color.fromARGB(255, 33, 125, 243),
    this.isNotAnimated = false,
    this.animationDurationSecs = 10,
    super.key,
  });

  final Widget? child;
  final double width;
  final double height;
  final double? horizontalPadding;
  final double? topPadding;
  final double? bottomPadding;
  final bool isNotAnimated;
  final int animationDurationSecs;

  final Color primaryColorLineFrame;

  final Color secondaryColorLineFrame;

  final Color primaryColorBackground;

  final Color secondaryColorBackground;

  final Color colorBackgroundLineFrame;

  @override
  State<CyberContainerOne> createState() => _CyberContainerOneState();
}

class _CyberContainerOneState extends State<CyberContainerOne>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Color?> _colorAnimationPrimary;
  late final Animation<Color?> _colorAnimationSecondary;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: widget.animationDurationSecs,
      ),
    );
    if (widget.isNotAnimated) return;
    _colorAnimationPrimary = ColorTween(
      begin: widget.secondaryColorBackground,
      end: widget.primaryColorBackground,
    ).animate(
      _controller,
    );
    _colorAnimationSecondary = ColorTween(
      begin: widget.primaryColorBackground,
      end: widget.secondaryColorBackground,
    ).animate(
      _controller,
    );

    _controller.forward();
    _controller.repeat(
      reverse: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(widget.width, widget.height),
          painter: RPSCustomPainterOne(
            primaryColorLineFrame: widget.primaryColorLineFrame,
            secondaryColorLineFrame: widget.secondaryColorLineFrame,
            primaryColorBackground: widget.isNotAnimated
                ? widget.primaryColorBackground
                : (_colorAnimationPrimary.value ??
                    widget.primaryColorBackground),
            secondaryColorBackground: widget.isNotAnimated
                ? widget.secondaryColorBackground
                : (_colorAnimationSecondary.value ??
                    widget.secondaryColorBackground),
            colorBackgroundLineFrame: widget.colorBackgroundLineFrame,
          ),
          child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: Padding(
              padding: EdgeInsets.only(
                left: widget.horizontalPadding ?? widget.width * .05,
                right: widget.horizontalPadding ?? widget.width * .05,
                top: widget.topPadding ?? widget.height * .25,
                bottom: widget.bottomPadding ?? widget.height * .20,
              ),
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}
