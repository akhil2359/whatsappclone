import 'package:flutter/material.dart';

import 'projects/whatsApp/home.dart';

import 'package:WhatsClone/projects/whatsApp/editprofile.dart';
import './splash.dart';

Future<Null> main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Splash(),
      '/home': (context) => Home(),
      '/editprofile': (context) => EditProfile(),
    },
  ));
}
