import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String imgurl;
  final primaryColor = Color(0xFFF1C1C1E);
  final secondaryColor = Color(0xFFF25A9FA);

  ChatScreen(this.imgurl, this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(
          color: secondaryColor,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.videocam_outlined,
                color: secondaryColor,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.call_outlined,
                color: secondaryColor,
              ),
              onPressed: null)
        ],
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage('$imgurl'),
            ),
            SizedBox(width: 8),
            Text(
              '$name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('https://i.redd.it/3jfjc53fsyb61.jpg'))),
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                child: Container(child: Chats()),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 6, bottom: 22, left: 5, right: 5),
                color: primaryColor,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.add,
                        color: secondaryColor,
                        size: 28,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 26,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.photo_camera_outlined,
                        color: secondaryColor,
                        size: 28,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.mic_outlined,
                        color: secondaryColor,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Chats extends StatelessWidget {
  final chats = [
    {'recepient': true, 'text': 'Hi there'},
    {'recepient': false, 'text': 'Hello'},
    {'recepient': true, 'text': 'Good Morning'},
    {'recepient': false, 'text': 'Mrng, Just woke up'},
    {'recepient': false, 'text': 'Are you done with project?'},
    {
      'recepient': true,
      'text': 'Not yet bro, will be completing today!',
      'seen': true,
    },
    {
      'recepient': false,
      'text':
          'Been waiting for so long, where have you been, are you cmng trmw',
      'seen': true,
    }
  ];

  final primaryColor = Color(0xFF128C7E);
  final secondaryColor = Color(0XFF333333);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                  flex: chats[index]['recepient'] ? 3 : 0, child: Container()),
              Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                      color: chats[index]['recepient']
                          ? primaryColor
                          : secondaryColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(6)),
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${chats[index]['text']}',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '12:27 PM',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 14),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            chats[index]['seen'] == null
                                ? Icons.done_all_outlined
                                : Icons.check,
                            color: chats[index]['seen'] == null
                                ? Colors.white
                                : Colors.blue,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: chats[index]['recepient'] ? 0 : 3, child: Text(''))
            ],
          );
        });
  }
}
