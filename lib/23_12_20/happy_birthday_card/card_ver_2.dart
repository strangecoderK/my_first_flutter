import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BirthDayCard(),
    );
  }
}

class BirthDayCard extends StatefulWidget {
  const BirthDayCard({super.key});

  @override
  State<BirthDayCard> createState() => _BirthDayCardState();
}

class _BirthDayCardState extends State<BirthDayCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: <Widget>[
          Positioned.fill(
            child: Image.network(
              'https://img.freepik.com/premium-photo/wallpapers-for-iphone-is-the-best-high-definition-iphone-wallpaper-in-you-can-make-this-wallpaper-for-your-iphone-x-backgrounds-mobile-screensaver-or-ipad-lock-screen-iphone-cute-cute_902639-30990.jpg',
              // width: double.infinity,
              // height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Happy\nBirthDay\nVicky!',
                  style: TextStyle(
                    fontSize: 100,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'from Christy',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
