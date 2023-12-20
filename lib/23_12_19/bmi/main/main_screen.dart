import 'package:flutter/material.dart';
import 'package:my_first_flutter/23_12_19/bmi/result/result_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('비만도 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '키',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '키를 입력하세요';
                    }
                    return null;
                  }),
              const SizedBox(height: 8),
              TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: '몸무게'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '몸무게를 입력하세요';
                    }
                    return null;
                  }),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState?.validate() ?? false) {
                    return;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResultScreen(
                        height: 180,
                        weight: 77.4,
                      ),
                    ),
                  );
                },
                child: const Text('결과'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
