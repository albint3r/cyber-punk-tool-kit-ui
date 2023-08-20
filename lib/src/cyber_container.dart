import 'dart:ui';

import 'package:cyber_glass_container/src/widgets/single_cyber_container.dart';
import 'package:flutter/material.dart';

class CyberContainer extends StatelessWidget {
  const CyberContainer({
    this.height = 100,
    this.width = 300,
    this.primaryColor = Colors.white60,
    this.secondaryColor = Colors.white10,
    this.bottomBorder = 3,
    super.key,
  });

  final double height;
  final double width;
  final Color primaryColor;
  final Color secondaryColor;
  final double bottomBorder;

  @override
  Widget build(BuildContext context) {
    return const SingleCyberContainer();
  }
}
