import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:WhatsClone/projects/whatsApp/preview.dart';

class EditProfile extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: EditProfileBody(),
    );
  }
}

final primaryColor = Color(0xFFF1C1C1E);

final textColor = Color(0xFFF9C9C9E);

class EditProfileBody extends StatefulWidget {
  @override
  _EditProfileBodyState createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends State<EditProfileBody> {
  File _image;
  final picker = ImagePicker();

  Future getImage(isCamera) async {
    final pickedFile = await picker.getImage(
        source: isCamera ? ImageSource.camera : ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
          color: primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return Preview(
                            'https://images.hdqwalls.com/download/iron-man-drinking-coffee-ne-2932x2932.jpg');
                      }));
                    },
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: primaryColor,
                      backgroundImage: _image != null
                          ? FileImage(_image)
                          : NetworkImage(
                              'https://images.hdqwalls.com/download/iron-man-drinking-coffee-ne-2932x2932.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter your name and add an optional',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 13,
                          letterSpacing: 0.32,
                        ),
                      ),
                      SizedBox(height: 0.4),
                      Text(
                        'profile picture',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 13,
                            letterSpacing: 0.32),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(14, 7, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    getImage(true);
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Color(0xFFF25A9FA), fontSize: 12),
                  ),
                ),
              ),
              CustomDivider(),
              PrimaryCustomText('Akhil'),
              CustomDivider(),
            ],
          ),
        ),
        MainSection('PHONE NUMBER', '+91 83410 07588', false),
        MainSection('ABOUT', "Can't talk, WhatsApp only", true),
      ],
    );
  }
}

// Divider
class CustomDivider extends StatelessWidget {
  Widget build(context) {
    return Divider(height: 20, thickness: 0.2, color: Color(0xFFD4D4D7));
  }
}

// Text
class PrimaryCustomText extends StatelessWidget {
  PrimaryCustomText(this.name);
  final String name;
  @override
  Widget build(context) {
    return Text(
      '$name',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  MainSection(this.label, this.value, this.hasArrow);
  final String label;
  final String value;
  final bool hasArrow;
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 35),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            '$label',
            style: TextStyle(
              color: textColor,
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(height: 7),
        Divider(height: 0.3, thickness: 0.3, color: Color(0xFFD4D4D7)),
        Container(
          width: double.infinity,
          color: primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryCustomText('$value'),
              Container(
                child: !this.hasArrow
                    ? null
                    : Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xFFF5E5D62),
                        size: 22,
                      ),
              )
            ],
          ),
        ),
        Divider(height: 0.2, thickness: 0.2, color: Color(0xFFD4D4D7)),
      ],
    );
  }
}
