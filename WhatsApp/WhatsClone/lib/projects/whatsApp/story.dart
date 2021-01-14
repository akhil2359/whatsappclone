import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class Story extends StatefulWidget {
  final List stories;
  Story(this.stories);
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();

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
      body: StoryView(
        storyItems: storylist,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
