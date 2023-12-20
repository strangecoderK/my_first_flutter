import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_flutter/23_12_20/stop_watch/stop_watch_screen.dart';


void main() {

  Timer.periodic(Duration(seconds: 1), (timer) { print('111');});
//timer : Timer 객체의 자기 자신이 들어옴
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const StopWatchScreen(),
    );
  }
}
