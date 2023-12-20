import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  final _testController = TextEditingController();

  @override
  void dispose() {
    _testController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 100),
              Container(height: 20),
              Text(
                '숫자',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 50,
                ),
              ),
              Text(
                '$number',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('ElvatedButton');
                },
                child: Text('ElvatedButton'),
              ),
              TextButton(
                onPressed: () {
                  print('TextButton');
                },
                child: Text('TextButton'),
              ),
              OutlinedButton(
                onPressed: () {
                  print('OutlinedButton');
                },
                child: Text('OutlinedButton'),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: _testController,
                      decoration: InputDecoration(
                        labelText: '글자',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(_testController.text);
                        //화면 갱신
                        setState(() {});
                      },
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Text(_testController.text),
              Image.network(
                'https://photo.coolenjoy.co.kr/data/editor/2212/70790cf216c0c0764fb57a9deb2f4e077dccba02.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/pic.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //화면 갱신
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
