import 'package:flutter/material.dart';

class Preview extends StatefulWidget {
  final String url;
  Preview(this.url);

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  final secondaryColor = Color(0xFFF25A9FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: secondaryColor,
        ),
        title: Text('Contact Info'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: GestureDetector(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Hero(
              tag: 'imageHero',
              child: Image.network(widget.url),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
