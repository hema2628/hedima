import 'package:flutter/material.dart';
import 'keep_alive.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: keepAlive(),
    );
  }
}

class keepAlive extends StatefulWidget {
  @override
  _keepAliveState createState() => _keepAliveState();
}

class _keepAliveState extends State<keepAlive> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 3,vsync: this);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('keep alive demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_bike)),
            Tab(icon: Icon(Icons.directions_boat)),

          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Myhome_page(),
          Myhome_page(),
          Myhome_page(),
        ],
      ),
    );
  }
}
