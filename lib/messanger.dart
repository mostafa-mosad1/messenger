import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:messenger/chat.dart';

class UserModel {
  late String? name;
  late String? image;
  late String? time;
  late bool? active;
  UserModel({
    this.name,
    this.image,
    this.time,
    this.active,
  });
}

class MessengerScreen extends StatefulWidget {
  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  @override
  var User = [
    UserModel(
        name: "mostafa mosad",
        image:
            'https://t3.ftcdn.net/jpg/01/63/14/28/360_F_163142822_dpKwaExhB0a0JvN1yyCLm83tV6ZXk5ZE.jpg',
        time: "3:33 pm",
        active: true),
    UserModel(
        name: "ali mohamed",
        image: "https://avatars.githubusercontent.com/u/118058556?v=4",
        time: "3:00 pm",
        active: false),
    UserModel(
        name: "mosad hussen",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ7ODMzvjfDZpgZ_UQfCRNeFvOZYi6YH4qCTKDY4jVgxJJqJ1ct5JO_In7vvUbHrgpLGk&usqp=CAU",
        time: "2:30 pm",
        active: true),
    UserModel(
        name: "yousef said",
        image: "https://avatars.githubusercontent.com/u/118058556?v=4",
        time: "2:25 pm",
        active: true),
    UserModel(
        name: "sasa abdalla",
        image:
            'https://images.prismic.io/inworld-web/11e53d68-528d-475a-972c-c0c5767312d3_What-is-an-ai-character-girl1.png?auto=compress%2Cformat&fit=max&w=3840',
        time: "2:10 pm",
        active: true),
    UserModel(
        name: "eslam ahmed ",
        image: "https://avatars.githubusercontent.com/u/118058556?v=4",
        time: "2:00 pm",
        active: false),
    UserModel(
        name: "adham hussen",
        image:
            'https://images.prismic.io/inworld-web/11e53d68-528d-475a-972c-c0c5767312d3_What-is-an-ai-character-girl1.png?auto=compress%2Cformat&fit=max&w=3840',
        time: "1:42 pm",
        active: true),
    UserModel(
        name: "ahamed mostafa",
        image: "https://avatars.githubusercontent.com/u/118058556?v=4",
        time: "2:00 pm",
        active: true),
    UserModel(
        name: "mohamed salah",
        image:
            'https://images.prismic.io/inworld-web/11e53d68-528d-475a-972c-c0c5767312d3_What-is-an-ai-character-girl1.png?auto=compress%2Cformat&fit=max&w=3840',
        time: "1:20 pm",
        active: true),
    UserModel(
        name: "gala mostafa",
        image: "https://avatars.githubusercontent.com/u/118058556?v=4",
        time: "10:00 am",
        active: false),
    UserModel(
        name: "mohab ahmed",
        image:
            'https://www.familyminded.com/s/animated-characters-humans-2608bbbc27a1483b',
        time: "9:00 am",
        active: true),
  ];
  var image;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/305191690_3158803834372021_3184246755333831625_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=0cb2yqgaVOsAX85wmhz&_nc_ht=scontent.fcai19-1.fna&oh=00_AfC2PwOWaxaYHgz4w0WDInxlQoAHGk6CeCD9HzUXHXQhNQ&oe=65833BF8'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(
                  5.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(User[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  ChatScreen(
                            name: "${User[index].name}",
                            image: "${User[index].image}",
                          ),
                        ));
                  },
                  child: Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage("${User[index].image}"),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: 3.0,
                              end: 3.0,
                            ),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: (User[index].active == true)
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${User[index].name}'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'hello my name is abdullah ahmed hello my ..........',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                  ),
                                  child: Container(
                                    width: 7.0,
                                    height: 7.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Text(
                                  '${User[index].time}',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
                itemCount: User.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 1. build item
  Widget buildChatItem(user, index) => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/34492145?v=4'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user[index].name}',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is abdullah ahmed hello my name .......',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      '02:00 pm',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buildStoryItem(UserModel user) => Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("${user.image}"),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor:
                        (user.active == true) ? Colors.green : Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              "${user.name}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}

// Future<void> getLostData() async {
//   final ImagePicker picker = ImagePicker();
//   final LostDataResponse response = await picker.retrieveLostData();
//   if (response.isEmpty) {
//     return;
//   }
//   final List<XFile>? files = response.files;
//   if (files != null) {
//     _handleLostFiles(files);
//   } else {
//     _handleError(response.exception);
//   }
// }
