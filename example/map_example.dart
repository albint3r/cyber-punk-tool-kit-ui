import 'package:cyber_glass_container/cyber_glass_container.dart';
import 'package:flutter/material.dart';

class MapExample extends StatelessWidget {
  const MapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CyberContainerOne(
      width: 700,
      height: 500,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/map.jpg'),
          ),
        ),
      ),
    );
  }
}
