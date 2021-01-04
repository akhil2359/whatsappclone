import 'package:flutter/material.dart';
import 'constants/constants.dart';

import 'package:helloworld/projects/whatsApp/preview.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  String tab = 'All';

  @override
  Widget build(BuildContext context) {
    List allCallsList = new Constants().callsList;
    List missedCallsList =
        allCallsList.where((element) => element['type'] == 'Missed').toList();
    List callsList = tab == 'All' ? allCallsList : missedCallsList;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.phone_in_talk_outlined,
                color: Color(0xFFF25A9FA),
              ),
              onPressed: () {}),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(top: 20, left: 18),
          child: Text(
            'Edit',
            style: TextStyle(color: Color(0xFFF25A9FA), fontSize: 16),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  tab = 'All';
                });
              },
              child: Container(
                  width: 70,
                  height: 23,
                  child: Center(
                    child: Text(
                      'All',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      shape: BoxShape.rectangle,
                      color: tab == 'All' ? Colors.grey : Color(0xFF30302f))),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  tab = 'Missed';
                });
              },
              child: Container(
                  width: 70,
                  height: 23,
                  child: Center(
                    child: Text(
                      'Missed',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      shape: BoxShape.rectangle,
                      color:
                          tab == 'Missed' ? Colors.grey : Color(0xFF30302f))),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              // Text('tab', style: TextStyle(color: Colors.white)),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: callsList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(4),
                    child: Column(
                      children: [
                        ListTile(
                          leading: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return Preview('${callsList[index]['imgurl']}');
                              }));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 25,
                              backgroundImage:
                                  NetworkImage('${callsList[index]['imgurl']}'),
                            ),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${callsList[index]['name']}',
                                    style: TextStyle(
                                        color:
                                            callsList[index]['type'] == 'Missed'
                                                ? Colors.red
                                                : Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        callsList[index]['mode'] == 'audio'
                                            ? Icons.call
                                            : Icons.videocam,
                                        color: Colors.grey,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '${callsList[index]['type']}',
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${callsList[index]['time']}',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.info_outline,
                                    color: Colors.blue,
                                    size: 22,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 84.0),
                          child: Divider(
                            height: 0.2,
                            thickness: 0.3,
                            color: Color(0xFFD4D4D7),
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
