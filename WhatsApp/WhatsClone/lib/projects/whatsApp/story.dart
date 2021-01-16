import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class Story extends StatefulWidget {
  final List stories;
  final String name;
  final String profileUrl;

  Story(this.stories, this.name, this.profileUrl);
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  String activeStoryName = 'sai';
  String activeStoryTime = 'Just Now';
  String date = '';
  StoryController controller;

  @override
  void initState() {
    super.initState();
    controller = StoryController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<StoryItem> storylist = [
      for (var item in widget.stories)
        if (item['type'] == 'text')
          StoryItem.text(title: item['value'], backgroundColor: item['color'])
        else if (item['type'] == 'image')
          StoryItem.pageImage(
            url: item['value'],
            caption: item['caption'],
            controller: controller,
          )
    ];

    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: storylist,
            controller: controller,
            inline: false,
            repeat: true,
            onVerticalSwipeComplete: (direction) {
              if (direction == Direction.down) {
                Navigator.pop(context);
              }
            },
            onStoryShow: (storyItem) {
              final index = storylist.indexOf(storyItem);
              final storiesMap = widget.stories.asMap();
              print(storiesMap[index]['time']);
              // final time = storiesMap[index]['time'];
              // setState(() {
              //   activeStoryTime = time;
              // });
            },
          ),
          Positioned(
              top: 47.0,
              left: 32.0,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18.0,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('${widget.profileUrl}'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${widget.name}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w800)),
                      SizedBox(
                        height: 3,
                      ),
                      Text('$activeStoryTime',
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
