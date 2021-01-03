import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<Choose> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('CHOOSE LOCATION'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Text('CHOOSE LOCATION SCREEN'),
    );
  }
}
