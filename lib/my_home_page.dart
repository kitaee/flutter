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
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
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
            Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSax7414sZt6C_T55Vtz5-TDZBr840uo3MRBQ&s',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            )
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