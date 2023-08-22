import 'package:flutter/material.dart';

import 'custom_painters/rps_custom_painter_two.dart';

/// A widget that displays an artistically designed container with animations.
///
/// The [CyberContainerTwo] widget uses [RPSCustomPainterTwo] to create a visually appealing
/// animated container with an artistic design. It supports gradient backgrounds and animated color transitions.
class CyberContainerTwo extends StatefulWidget {
  /// Creates a [CyberContainerTwo] widget.
  ///
  /// The container's appearance and animation can be customized using various properties:
  /// - [child]: The child widget contained within the container.
  /// - [width]: The width of the container.
  /// - [height]: The height of the container.
  /// - [padding]: Padding value for the container's content.
  /// - [isNotAnimated]: If `true`, animations are disabled.
  /// - [animationDurationSecs]: Duration in seconds for the animation.
  /// - [primaryColorLineFrame], [secondaryColorLineFrame]: Gradient colors for lines.
  /// - [primaryColorBackground], [secondaryColorBackground]: Gradient colors for background.
  /// - [colorBackgroundLineFrame]: Color for line frames within the background.
  const CyberContainerTwo({
    this.child,
    this.width = 400,
    this.height = 700,
    this.padding,
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
  final double? padding;
  final bool isNotAnimated;
  final int animationDurationSecs;

  final Color primaryColorLineFrame;

  final Color secondaryColorLineFrame;

  final Color primaryColorBackground;

  final Color secondaryColorBackground;

  final Color colorBackgroundLineFrame;

  @override
  State<CyberContainerTwo> createState() => _CyberContainerTwoState();
}

class _CyberContainerTwoState extends State<CyberContainerTwo>
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
          painter: RPSCustomPainterTwo(
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
              padding: EdgeInsets.all(widget.padding ?? widget.width * .125),
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}
