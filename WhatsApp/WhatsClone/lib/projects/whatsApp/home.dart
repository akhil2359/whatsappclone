import 'package:flutter/material.dart';
import 'package:WhatsClone/projects/whatsApp/settings.dart';
import 'package:WhatsClone/projects/whatsApp/status.dart';
import 'package:WhatsClone/projects/whatsApp/calls.dart';
import 'package:WhatsClone/projects/whatsApp/camera.dart';
import 'package:WhatsClone/projects/whatsApp/chats.dart';

class Home extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Home> {
  // active tab index
  int activeTabIndex = 0;

  List bottomNavigatorOptions = [
    {'label': 'Status', 'method': Status()},
    {'label': 'Calls', 'method': Calls()},
    {'label': 'Camera', 'method': Camera()},
    {'label': 'Chats', 'method': Chats()},
    {'label': 'Settings', 'method': Settings()},
  ];

  void onSelectOption(int index) {
    setState(() {
      activeTabIndex = index;
    });
  }

  final primaryColor = Color(0xFFF1C1C1E);

  final textColor = Color(0xFFF9C9C9E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bottomNavigatorOptions.elementAt(activeTabIndex)['label'] ==
              "Calls"
          ? null
          : AppBar(
              actions:
                  bottomNavigatorOptions.elementAt(activeTabIndex)['label'] ==
                          "Chats"
                      ? [
                          IconButton(
                              icon: Icon(
                                Icons.edit,
                                size: 16,
                                color: Color(0xFFF25A9FA),
                              ),
                              onPressed: () {}),
                        ]
                      : null,
              leading: Padding(
                padding: const EdgeInsets.only(top: 20, left: 18),
                child: bottomNavigatorOptions
                            .elementAt(activeTabIndex)['label'] ==
                        "Chats"
                    ? Text(
                        'Edit',
                        style:
                            TextStyle(color: Color(0xFFF25A9FA), fontSize: 16),
                      )
                    : null,
              ),
              title: Text(
                bottomNavigatorOptions.elementAt(activeTabIndex)['label'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              backgroundColor: primaryColor,
              centerTitle: true,
              elevation: 0,
            ),
      body: bottomNavigatorOptions.elementAt(activeTabIndex)['method'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeTabIndex,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color(0xFFFB9B7B7),
        onTap: onSelectOption,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_checked_outlined),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
