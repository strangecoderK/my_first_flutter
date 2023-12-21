import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Domo',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const SensorApp(),
    );
  }
}

class SensorApp extends StatelessWidget {
  const SensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    final centerX = MediaQuery.of(context).size.width / 2 - 100;
    final centerY = MediaQuery.of(context).size.height / 2 - 100;
    return Scaffold(backgroundColor: Colors.pink[100],
      body: Stack(
        children: [
          Positioned(
            left: centerX,
            top: centerY,
            child: Container(
              child: Image.asset(
                'assets/flower.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
