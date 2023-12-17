import 'package:flutter/material.dart';
import 'package:messenger/signup.dart';
import 'package:messenger/splach_screen.dart';
import 'chat.dart';
import 'homeLayout.dart';
import 'login.dart';
import 'messanger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SplashScreen()
    );
  }
}
