import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'buttons_menu.dart';
import 'chat_example.dart';
import 'map_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyber example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cyber example'),
        ),
        body: Container(
          alignment: Alignment.topLeft,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/cyber2.jpg'),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChatExample(),
                Gap(10),
                MapExample(),
                Gap(10),
                ButtonsMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
