import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('HOME'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: Center(
        child: RaisedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/choose');
            },
            icon: Icon(Icons.edit_location),
            label: Text('Choose Location')),
      )),
    );
  }
}
