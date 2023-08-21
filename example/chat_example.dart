import 'package:cyber_punk_tool_kit_ui/src/containers/cyber_container_two.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChatExample extends StatelessWidget {
  const ChatExample({super.key});

  BoxDecoration get _boxDecoration => BoxDecoration(
    color: Colors.black.withOpacity(1),
  );

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(8);
    const margin = EdgeInsets.symmetric(vertical: 4);
    const textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return CyberContainerTwo(
      width: 300,
      height: 500,
      child: Card(
        color: Colors.transparent,
        child: SizedBox(
          child: Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Albint3r:',
                    style: textStyle,
                  ),
                ),
                Container(
                  decoration: _boxDecoration,
                  padding: padding,
                  margin: margin,
                  child: Text(
                    'Hey, you found any clean water lately?',
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const Gap(10),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'NoobMaster:',
                    style: textStyle,
                  ),
                ),
                Container(
                  decoration: _boxDecoration,
                  padding: padding,
                  margin: margin,
                  child: Text(
                    'Yeah, I got lucky and found a hidden stash yesterday.',
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const Gap(10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Albint3r:',
                    style: textStyle,
                  ),
                ),
                Container(
                  decoration: _boxDecoration,
                  padding: padding,
                  margin: margin,
                  child: Text(
                    'That\'s great! We need all the supplies we can get in this wasteland.',
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                // You can continue adding more messages
              ],
            ),
          ),
        ),
      ),
    );
  }
}
