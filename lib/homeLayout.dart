import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/stories.dart';
import 'call.dart';
import 'messanger.dart';

class homeLayout extends StatefulWidget {
  const homeLayout({Key? key}) : super(key: key);

  @override
  State<homeLayout> createState() => _homeLayoutState();
}

class _homeLayoutState extends State<homeLayout> {
  int currentIndex = 0;
List pages =[MessengerScreen(),stories(),call()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex ,
            onTap: (index){
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'chat'),
              BottomNavigationBarItem(icon: Icon(Icons.amp_stories),label: 'stories'),
              BottomNavigationBarItem(icon: Icon(Icons.call),label: 'call'),
            ],
          ),
        ));
  }
}







