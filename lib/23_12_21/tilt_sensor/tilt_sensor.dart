import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors_plus/sensors_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const SensorApp(),
    );
  }
}

class SensorApp extends StatelessWidget {
  const SensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      //DeviceOrientation.landscapeRight
    ]);
    final centerX = MediaQuery.of(context).size.width / 2 - 100;
    final centerY = MediaQuery.of(context).size.height / 2 - 100;
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Stack(
        children: [
          StreamBuilder<AccelerometerEvent>(
              stream: accelerometerEventStream(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final event = snapshot.data!;
                List<double> accelerometerValues = [event.x, event.y, event.z];
                print(accelerometerValues);
                return Positioned(
                  left: centerX + event.y * 20,
                  top: centerY + event.x * 20,
                  child: Container(
                    child: Image.asset(
                      'assets/flower.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
