import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // opens camera onMount
    getImage(true);
  }

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: _image == null
                  ? NetworkImage(
                      'https://www.ibts.org/wp-content/uploads/2017/08/iStock-476085198.jpg')
                  : FileImage(_image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          _image = null;
                        });
                      }),
                  IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {
                        getImage(true);
                      }),
                  IconButton(
                      icon: Icon(Icons.image),
                      onPressed: () {
                        getImage(false);
                      })
                ],
              ),
            ))
      ],
    );
  }
}
