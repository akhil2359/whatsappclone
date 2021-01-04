import 'package:flutter/material.dart';
import 'constants/constants.dart';

import 'package:helloworld/projects/whatsApp/preview.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ChatsContainer(),
    );
  }
}

final chatList = new Constants().chatList;

class ChatsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.black,
                    child: Column(
                      children: [
                        ListTile(
                          leading: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return Preview('${chatList[index]['imgurl']}');
                              }));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 30,
                              backgroundImage:
                                  NetworkImage('${chatList[index]['imgurl']}'),
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${chatList[index]['name']}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '${chatList[index]['time']}',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 14),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    chatList[index]['seen'] == null
                                        ? Icons.check
                                        : Icons.done_all_outlined,
                                    color: chatList[index]['seen'] == null
                                        ? Colors.white
                                        : chatList[index]['seen']
                                            ? Colors.blue
                                            : Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '${chatList[index]['text']}',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 84.0),
                          child: Divider(
                            height: 3,
                            thickness: 0.3,
                            color: Color(0xFFD4D4D7),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
    ;
  }
}
