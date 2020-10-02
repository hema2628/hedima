import 'package:demo_004/demo06/main.dart';
import 'package:flutter/material.dart';
import 'ExpansionTileDemo.dart';
import 'panelList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'expension',
      theme: ThemeData.dark(),
      home: ExpansionPanelListDemo(),
    );
  }
}
