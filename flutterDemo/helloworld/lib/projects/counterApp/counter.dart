import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  createState() {
    return CounterState();
  }
}

class CounterState extends State<Counter> {
  int count = 0;
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Counter App'),
      ),
      body: Center(
        child: Text(
          'Counter Value - $count',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    ));
  }
}
