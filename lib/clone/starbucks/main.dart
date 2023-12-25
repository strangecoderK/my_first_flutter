import 'package:flutter/material.dart';

import 'main_screen.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbucks',
      theme: ThemeData(floatingActionButtonTheme: const FloatingActionButtonThemeData(shape: StadiumBorder()),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
      ),
      home: const StarBucksMain(),
    );
  }
}
