import 'package:demo_004/demo0010/splash_screen.dart';
import 'package:flutter/material.dart';



void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo of xiaomaben',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: SpalashScreen()
    );
  }
}