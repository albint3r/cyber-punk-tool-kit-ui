import 'package:cyber_glass_container/cyber_glass_container.dart';
import 'package:flutter/material.dart';

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
              image: AssetImage('assets/cyber.jpg'),
            ),
          ),
          child: const CyberContainer(
            width: 200,
            height: 50,
            primaryColorBigContainer: Colors.orange,
            secondaryColorBigContainer: Colors.purple,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('GO TO GAME', textAlign: TextAlign.center,style: TextStyle(
                color: Colors.white
              )),
            ),
          ),
        ),
      ),
    );
  }
}
