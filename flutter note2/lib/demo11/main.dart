import 'package:flutter/material.dart';
import 'right_back.dart';



void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter demo of xiaomaben',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: rightbackDemo()
    );
  }
}