import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '页面跳转返回数据',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('find someone'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){_navigatortowomen(context);},
      child: Text('look for someone'),
    );
  }

  _navigatortowomen(BuildContext context) async{
    final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Xiaojiejie())
    );

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result'),));
  }
}

class Xiaojiejie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I am the one'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('person1'),
              onPressed: (){
                Navigator.pop(context,'person1:234567654');
              },
            ),
            RaisedButton(
              child: Text('person2'),
              onPressed: (){
                Navigator.pop(context,'person2:234535954');
              },
            )
          ],
        ),
      ),
    );
  }
}
