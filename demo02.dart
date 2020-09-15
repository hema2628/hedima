// pages changes

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '导航演示01',
    home: new FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('navigator page')),
      body: Center(
        child: RaisedButton(
          child: Text('view good details'),
          onPressed:() {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => new SecondScreen()
            ));
          },
        ),
      )
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('goods details'),),
      body: Center(
        child: RaisedButton(
          child: Text('go back'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}