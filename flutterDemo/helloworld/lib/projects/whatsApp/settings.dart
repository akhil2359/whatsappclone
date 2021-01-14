import 'package:flutter/material.dart';

final primaryColor = Color(0xFF1C1C1E);

class Settings extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              Divider(height: 0.2, thickness: 0.2, color: Color(0xFFD4D4D7)),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/editprofile');
                },
                child: Container(
                  padding: EdgeInsets.all(6),
                  color: primaryColor,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: primaryColor,
                                  backgroundImage: NetworkImage(
                                      'https://media-exp1.licdn.com/dms/image/C5103AQEQcaUz7Rb4rw/profile-displayphoto-shrink_200_200/0/1585075769906?e=1616025600&v=beta&t=59SFfWmdVIiTDXW564ecGgnegAZGbw-9VRFqael-sRs')),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Akhil',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('Available',
                                      style: TextStyle(
                                          color: Colors.white60, fontSize: 15))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Icons.qr_code,
                            color: Color(0xFFF2E9EFF),
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF3E3E41)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Container(
                color: primaryColor,
                child: Column(
                  children: [
                    CustomSection('Starred Messages', Icons.star,
                        Color(0xFFFFCC427), false),
                    CustomSection('WhatsApp Web/Desktop',
                        Icons.computer_outlined, Color(0xFFF27ADA0), true),
                  ],
                ),
              ),
              Divider(height: 0.2, thickness: 0.2, color: Color(0xFFD4D4D7)),
              SizedBox(height: 28),
              Container(
                color: primaryColor,
                child: Column(
                  children: [
                    CustomSection(
                        'Accounts', Icons.vpn_key, Color(0xFFF3A7AFF), false),
                    CustomSection(
                        'Chats', Icons.call, Color(0xFFF75E18D), false),
                    CustomSection(
                        'Notifications',
                        Icons.mark_chat_unread_outlined,
                        Color(0xFFFFA3B2F),
                        false),
                    CustomSection('Payments', Icons.monetization_on_outlined,
                        Color(0xFFF4CD764), false),
                    CustomSection('Storage and Data', Icons.import_export,
                        Color(0xFFF4CD764), true)
                  ],
                ),
              ),
              Divider(height: 0.2, thickness: 0.2, color: Color(0xFFD4D4D7)),
              SizedBox(height: 28),
              Container(
                color: primaryColor,
                child: Column(
                  children: [
                    CustomSection(
                        'Help', Icons.info, Color(0xFFF4CA0FF), false),
                    CustomSection('Tell a Friend', Icons.favorite,
                        Color(0xFFFF92B55), true),
                  ],
                ),
              ),
              Container(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('from',
                        style: TextStyle(color: Colors.white60, fontSize: 12)),
                    SizedBox(
                      height: 4,
                    ),
                    Text('FACEBOOK',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Custom section
class CustomSection extends StatelessWidget {
  CustomSection(this.label, this.icon, this.color, this.isLast);
  final String label;
  final IconData icon;
  final Color color;
  final bool isLast;
  @override
  Widget build(context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          color: primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(6),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 20,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            shape: BoxShape.rectangle,
                            color: color)),
                    SizedBox(width: 15),
                    Text('$label',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xFFF5E5D62),
                size: 22,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 54.0),
          child: isLast
              ? null
              : Divider(height: 0.2, thickness: 0.2, color: Color(0xFFD4D4D7)),
        ),
      ],
    );
  }
}
