# Cyber-Punk Tool Kit UI Flutter Package

![Cyber-Punk Tool Kit UI Screenshot](https://raw.githubusercontent.com/albint3r/cyber-punk-tool-kit-ui/master/assets/cyber-punk-tool-kit-ui.png)


Welcome to the Cyber-Punk Tool Kit UI Flutter package! This package brings futuristic cyberpunk aesthetics to your Flutter app's user interface. Inspired by the visuals of Cyberpunk 2077, the Cyber-Punk Tool Kit UI package offers a set of customizable UI components that can be seamlessly integrated into your app.

## Features

- **CyberContainerOne**: An artistic container with a diagonal frame and gradient background. Customize frame and background colors, and control padding for flexible content placement.

- **CyberContainerTwo**: A versatile container with a customizable artistic frame and background gradient. Showcase content with a unique visual appeal.

- **SingleDiagonalContainer**: A visually distinctive container with a diagonal gradient background. Ideal for emphasizing key content.

- **CyberButton**: An innovative button with a dynamic multi-layered gradient design. Enhance UI interaction with a sophisticated appearance.

## Installation

To use the Cyber-Punk Tool Kit UI package in your Flutter app, simply add it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  cyber_punk_tool_kit_ui: ^0.0.1
```

Then, import the package in your Dart code:
```
import 'package:cyber_punk_tool_kit_ui/cyber_punk_tool_kit_ui.dart';
```

# Usage
Check out the example folder to see how to integrate Cyber-Punk Tool Kit UI components into your app.

## CyberContainerOne
![Cyber-Punk Tool Kit UI Screenshot](https://raw.githubusercontent.com/albint3r/cyber-punk-tool-kit-ui/master/assets/cyber-container-one.png)

```
import 'package:cyber_punk_tool_kit_ui/cyber_glass_container.dart';
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
```

## CyberContainerTwo
![Cyber-Punk Tool Kit UI Screenshot](https://raw.githubusercontent.com/albint3r/cyber-punk-tool-kit-ui/master/assets/cyber-container-two.png)

```
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
```
## CyberButton
![Cyber-Punk Tool Kit UI Screenshot](https://raw.githubusercontent.com/albint3r/cyber-punk-tool-kit-ui/master/assets/cyber_button.png)
```
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
```

