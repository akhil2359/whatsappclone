import 'dart:async';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 0),
        () => Navigator.pushReplacementNamed(context, '/home'));
  }

  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Image(
                width: 160,
                height: 160,
                image: AssetImage('assets/splash.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28.0),
                child: Container(
                  child: Column(
                    children: [
                      Text('from',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 4,
                      ),
                      Text('AKHIL',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5.8,
                              fontSize: 18))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
