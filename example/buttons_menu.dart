import 'package:cyber_punk_tool_kit_ui/src/buttons/cyber_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ButtonsMenu extends StatelessWidget {
  const ButtonsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Gap(10),
        CyberButton(
          width: 200,
          height: 50,
          primaryColorBigContainer: Colors.orange,
          secondaryColorBigContainer: Colors.purple,
          child: Text(
            'PLAY',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Gap(10),
        CyberButton(
          width: 200,
          height: 50,
          primaryColorBigContainer: Colors.greenAccent,
          secondaryColorBigContainer: Colors.blueAccent,
          child: Text(
            'PAUSE',
            style: TextStyle(color: Colors.white),
          ),
        ), Gap(10),
        CyberButton(
          width: 200,
          height: 50,
          primaryColorBigContainer: Colors.black,
          secondaryColorBigContainer: Colors.greenAccent,
          child: Text(
            'EXIT',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Gap(10),
        CyberButton(
          width: 200,
          height: 50,
          primaryColorBigContainer: Colors.redAccent,
          secondaryColorBigContainer: Colors.yellowAccent,
          child: Text(
            'SETTINGS',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
