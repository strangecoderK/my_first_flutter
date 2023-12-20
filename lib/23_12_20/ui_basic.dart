import 'package:flutter/material.dart';

class CampingWidget extends StatelessWidget {
  const CampingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(
              'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            secondArea(),
            //thridArea('1234'),
            Text('1234'),
          ],
        ),
      ),
    );
  }

  Widget secondArea() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'subtext',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
