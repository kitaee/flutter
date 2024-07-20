import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('숫자',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                )),
            Text('$count',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                )),
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              child: Text('ElevatedButton'),
            ),
            TextButton(
              onPressed: () {
                print("TextButton");
              },
              child: Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: () {
                print("OutlinedButton");
              },
              child: Text('OutlinedButton'),
            ),
            TextField(
              onChanged: (text) {
                print(text);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}