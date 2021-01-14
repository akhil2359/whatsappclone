import 'package:flutter/material.dart';

class Constants {
  List chatList = [
    {
      'name': 'Jonas',
      'text': 'Hello',
      'time': '6:11 PM',
      'seen': null,
      'imgurl':
          'https://images.unsplash.com/photo-1503104834685-7205e8607eb9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
    },
    {
      'name': 'Akhil B',
      'text': 'Sic Mundus Creatus Est',
      'time': '4:21 PM',
      'seen': true,
      'imgurl':
          'https://media-exp1.licdn.com/dms/image/C5103AQEQcaUz7Rb4rw/profile-displayphoto-shrink_200_200/0/1585075769906?e=1616025600&v=beta&t=59SFfWmdVIiTDXW564ecGgnegAZGbw-9VRFqael-sRs'
    },
    {
      'name': 'Martha Nielsen',
      'text': 'What doing bro?',
      'time': '2:21 PM',
      'seen': false,
      'imgurl':
          'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
    },
    {
      'name': 'Ulrich',
      'text': 'Good Morning!',
      'time': 'Yesterday',
      'seen': true,
      'imgurl':
          'https://i.pinimg.com/originals/1b/27/84/1b27848292d0e8508be5de557d9634ab.jpg'
    },
    {
      'name': 'Noah',
      'text': 'wr r u',
      'time': 'Yesterday',
      'seen': true,
      'imgurl':
          'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80'
    },
    {
      'name': 'Mark',
      'text': 'Rey',
      'time': 'Friday',
      'seen': null,
      'imgurl':
          'https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
    },
    {
      'name': 'Alexander Tidemann',
      'text': 'What doing bro?',
      'time': 'Friday',
      'seen': false,
      'imgurl':
          'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
    },
    {
      'name': 'Magnus',
      'text': 'Good Morning!',
      'time': 'Friday',
      'seen': true,
      'imgurl':
          'https://images.unsplash.com/photo-1513379733131-47fc74b45fc7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
    },
    {
      'name': 'Claudia',
      'text': 'wr r u',
      'time': 'Friday',
      'seen': true,
      'imgurl':
          'https://static.wikia.nocookie.net/dark-netflix/images/8/81/Profile_-_Claudia_1986.JPG/revision/latest?cb=20180120101235'
    },
    {
      'name': 'Sri',
      'text': 'Good Morning!',
      'time': 'Friday',
      'seen': null,
      'imgurl':
          'https://media1.popsugar-assets.com/files/thumbor/hJtu9hqqs4SSgEZd_PAsbxtuQe0/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2020/06/25/829/n/1922283/923e699d5ef4f300b53395.43972752_asdjdjsaja/i/Mikkel-NielsenMichael-Kahnwald.j'
    },
    {
      'name': 'Martha Nielsen',
      'text': 'What doing bro?',
      'time': 'Thursday',
      'seen': false,
      'imgurl':
          'https://images.unsplash.com/photo-1564485377539-4af72d1f6a2f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80'
    },
    {
      'name': 'Alex',
      'text': 'Good Morning!',
      'time': 'Thursday',
      'seen': true,
      'imgurl':
          'https://images.unsplash.com/photo-1512413316925-fd4b93f31521?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
    },
    {
      'name': 'Benny',
      'text': 'wr r u',
      'time': 'Thursday',
      'seen': true,
      'imgurl':
          'https://images.unsplash.com/photo-1512316609839-ce289d3eba0a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
    },
    {
      'name': 'James',
      'text': 'Hola',
      'time': 'Wednesday',
      'seen': true,
      'imgurl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/MarkZuckerberg-crop.jpg/210px-MarkZuckerberg-crop.jpg'
    },
  ];

  List callsList = [
    {
      'name': 'Mom',
      'imgurl':
          'https://images.unsplash.com/photo-1514481422339-db621c1fca86?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60g',
      'type': 'Incoming',
      'mode': 'audio',
      'time': '11:36 AM',
    },
    {
      'name': 'Dad',
      'imgurl':
          'https://images.unsplash.com/photo-1492632736198-174776a820f9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bWFsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'type': 'Missed',
      'mode': 'vieo',
      'time': '5:13 PM'
    },
    {
      'name': 'Marie & 5 others',
      'imgurl':
          'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bWFsZXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'type': 'Incoming',
      'mode': 'audio',
      'time': '2:59 PM'
    },
    {
      'name': 'Johnny',
      'imgurl':
          'https://images.unsplash.com/photo-1579119986241-5e72d26cb690?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'type': 'Missed',
      'mode': 'video',
      'time': 'Yesterday'
    },
    {
      'name': 'Chris',
      'imgurl': 'https://i.redd.it/wc829mc0p8751.png',
      'type': 'Outgoing',
      'mode': 'audio',
      'time': 'Yesterday'
    },
    {
      'name': 'Martha',
      'imgurl': 'https://data.whicdn.com/images/345962826/original.jpg',
      'type': 'Missed',
      'mode': 'audio',
      'time': 'Yesterday'
    },
    {
      'name': 'Vishnu',
      'imgurl':
          'https://images.unsplash.com/photo-1512552288940-3a300922a275?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDl8fG1hbGUlMjBpbmRpYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'type': 'Missed',
      'mode': 'video',
      'time': 'Friday'
    },
    {
      'name': 'James',
      'imgurl':
          'https://images.unsplash.com/photo-1527340035609-e6e75dc79f53?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fG1hbGUlMjBpbmRpYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'type': 'Outgoing',
      'mode': 'audio',
      'time': 'Thursday'
    },
    {
      'name': 'Mark',
      'imgurl':
          'https://images.unsplash.com/photo-1541697277882-d139bbd1d08a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzh8fG1hbGUlMjBpbmRpYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'type': 'Incoming',
      'mode': 'audio',
      'time': '22/12/20'
    },
    {
      'name': 'Zuck bro',
      'imgurl':
          'https://images.unsplash.com/photo-1547455138-be2c2b333def?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjN8fG1hbGUlMjBpbmRpYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'type': 'Missed',
      'mode': 'video',
      'time': '22/12/20'
    },
    {
      'name': 'Uncle',
      'imgurl':
          'https://images.unsplash.com/photo-1498830923224-e1c12d1564a6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbGUlMjBpbmRpYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'type': 'Missed',
      'mode': 'audio',
      'time': '21/12/20'
    },
    {
      'name': 'Marie',
      'imgurl':
          'https://images.unsplash.com/photo-1558487661-9d4f01e2ad64?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fG1hbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'type': 'Incoming',
      'mode': 'video',
      'time': '21/12/20'
    }
  ];

  List statusList = [
    {
      'name': 'Sridhar',
      'imgurl':
          'https://images.unsplash.com/photo-1573393604794-f41cd02f95d4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hbiUyMG9uJTIwYmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
      'time': '1',
      'stories': [
        {
          'type': 'image',
          'value':
              'https://images.unsplash.com/photo-1573393604794-f41cd02f95d4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hbiUyMG9uJTIwYmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
          'color': Colors.red,
          'caption': 'Beach DAY!!'
        },
        {
          'type': 'text',
          'value': 'Happy new year',
          'color': Colors.blue,
          'caption': 'Holaa ppl'
        },
        {
          'type': 'image',
          'value':
              'https://www.treebo.com/blog/wp-content/uploads/2017/05/Things-to-do-in-Goa-at-night_1-1024x683.jpg',
          'color': Colors.red,
          'caption': 'Night Life in GOA'
        }
      ]
    },
    {
      'name': 'Akhil',
      'imgurl':
          'https://images.unsplash.com/photo-1473172707857-f9e276582ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVvcGxlJTIwbmF0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80',
      'time': '1',
      'stories': [
        {
          'type': 'image',
          'value':
              'https://images.unsplash.com/photo-1473172707857-f9e276582ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVvcGxlJTIwbmF0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80',
          'color': Colors.red,
          'caption': 'LOVE'
        },
        {
          'type': 'image',
          'value':
              'https://images.unsplash.com/photo-1464746133101-a2c3f88e0dd9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZSUyMG5hdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
          'color': Colors.red,
          'caption': 'YOLO'
        }
      ]
    },
    {
      'name': 'Jhonny',
      'imgurl':
          'https://www.popcornoncouch.com/wp-content/uploads/2016/05/cinemaaudience.jpg',
      'time': '1',
      'stories': [
        {
          'type': 'image',
          'value':
              'https://www.popcornoncouch.com/wp-content/uploads/2016/05/cinemaaudience.jpg',
          'color': Colors.red,
          'caption': 'Movie time'
        },
        {
          'type': 'image',
          'value':
              'https://media-cdn.tripadvisor.com/media/photo-s/15/b2/57/3e/amb-cinemas.jpg',
          'color': Colors.red,
          'caption': 'Interval things'
        },
        {
          'type': 'text',
          'value': 'It was a great movie',
          'color': Colors.grey,
          'caption': 'Holaa ppl'
        },
      ]
    },
    {
      'name': 'Mark bro',
      'imgurl':
          'https://cars.usnews.com/pics/size/640x420/static/images/article/202006/128503/216702_New_Volvo_XC40_-_exterior_640x420.jpg',
      'time': '1',
      'stories': [
        {
          'type': 'image',
          'value':
              'https://cars.usnews.com/pics/size/640x420/static/images/article/202006/128503/216702_New_Volvo_XC40_-_exterior_640x420.jpg',
          'color': Colors.red,
          'caption': 'Love this'
        },
        {
          'type': 'image',
          'value':
              'https://carinmylife.com/wp-content/uploads/2020/07/cautofotoToyota-Corolla-Skoda-Octavia-twin-test-2-678x381.jpg',
          'color': Colors.red,
          'caption': 'Ride day'
        },
        {
          'type': 'text',
          'value': 'Had a great day',
          'color': Colors.pink,
          'caption': 'Holaa ppl'
        }
      ]
    },
    {
      'name': 'Jonas',
      'imgurl':
          'https://www.india.com/wp-content/uploads/2018/08/Bangalore-Airport-haunted-1.jpg',
      'time': '1',
      'stories': [
        {
          'type': 'image',
          'value':
              'https://www.india.com/wp-content/uploads/2018/08/Bangalore-Airport-haunted-1.jpg',
          'color': Colors.red,
          'caption': 'Hi Bangalore'
        },
        {
          'type': 'image',
          'value':
              'https://i.pinimg.com/originals/01/00/17/0100171c77b82915b9b0f691f7b61005.jpg',
          'color': Colors.red,
          'caption': 'Off to Cochi'
        },
        {
          'type': 'text',
          'value': 'Reached',
          'color': Colors.black,
          'caption': ''
        }
      ]
    }
  ];
}
