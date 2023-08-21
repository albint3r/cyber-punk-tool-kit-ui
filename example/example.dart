import 'package:cyber_glass_container/cyber_glass_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          child: const Column(
            children: [
              Gap(10),
              CyberContainer(
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
              CyberContainer(
                width: 200,
                height: 50,
                primaryColorBigContainer: Colors.greenAccent,
                secondaryColorBigContainer: Colors.blueAccent,
                child: Text(
                  'PAUSE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Gap(10),
              CyberContainer(
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
          ),
        ),
      ),
    );
  }
}
