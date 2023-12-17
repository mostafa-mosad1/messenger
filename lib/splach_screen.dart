import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
            () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          Image(image: AssetImage("images/13.jpg"),
          height: double.infinity,
          fit: BoxFit.cover,),
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: AssetImage("images/12.png"), width: 90,
                    height: 90,),
                  SizedBox(
                    height: 20,
                  ),

                  Text("messenger",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 45)),

                ]),
          ),
        ],
      ),

    );
  }
}