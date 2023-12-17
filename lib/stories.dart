import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class stories extends StatelessWidget {
  stories({Key? key}) : super(key: key);
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Stories".toUpperCase()),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 700.0,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [
                            CircleAvatar(
                              radius: 35.0,backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage("${User[index].image}"),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text(
                              "${User[index].name}".toUpperCase(),
                              style: TextStyle(fontSize: 20),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: User.length,
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
