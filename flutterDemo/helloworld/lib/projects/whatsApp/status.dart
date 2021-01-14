import 'package:flutter/material.dart';
import 'constants/constants.dart';
import 'package:helloworld/projects/whatsApp/story.dart';

final primaryColor = Color(0xFFF1D1D1F);
List statusList = new Constants().statusList;

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            MainSection(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, bottom: 14),
              child: Text('VIEWED UPDATES',
                  style: TextStyle(color: Colors.white60, fontSize: 14)),
            ),
            Container(
              color: primaryColor,
              child: Column(
                children: [
                  for (var item in statusList)
                    StatusItem(item['name'], item['time'], item['imgurl'],
                        item['stories'])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Top Main Section
class MainSection extends StatelessWidget {
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.all(4),
      color: primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                        radius: 30.0,
                        backgroundColor: primaryColor,
                        backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C5103AQEQcaUz7Rb4rw/profile-displayphoto-shrink_200_200/0/1585075769906?e=1616025600&v=beta&t=59SFfWmdVIiTDXW564ecGgnegAZGbw-9VRFqael-sRs')),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('My Status',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Add to my status',
                        style: TextStyle(color: Colors.white60, fontSize: 14))
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF30302f)),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.blue,
                    size: 20,
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 35,
                  height: 35,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF30302f)),
                  child: Icon(
                    Icons.edit,
                    color: Colors.blue,
                    size: 20,
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Status Item ui

class StatusItem extends StatelessWidget {
  final String name;
  final String time;
  final String imgurl;
  final List stories;
  StatusItem(this.name, this.time, this.imgurl, this.stories);

  Widget build(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return Story(stories);
        }));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            color: primaryColor,
            width: double.infinity,
            child: Row(
              children: [
                CircleAvatar(
                    radius: 25.0,
                    backgroundColor: primaryColor,
                    backgroundImage: NetworkImage('$imgurl')),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('$name',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(
                      height: 3,
                    ),
                    Text('${time}h ago',
                        style: TextStyle(color: Colors.white60, fontSize: 14))
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75.0),
            child:
                Divider(height: 0.2, thickness: 0.2, color: Color(0xFFD4D4D7)),
          )
        ],
      ),
    );
  }
}
