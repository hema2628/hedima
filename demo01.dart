import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ......card list......
    var card = new Card(
      child:Column(
        children: <Widget>[
          ListTile(
            title: Text('sydney',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('maben:0451855667'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,)),
          new Divider(),
          ListTile(
              title: Text('Brisbane',style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text('mabener:0451833667'),
              leading: new Icon(Icons.account_box,color: Colors.lightBlue,)),
          new Divider(),
          ListTile(
              title: Text('Melben',style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text('xiaomaben:0451877667'),
              leading: new Icon(Icons.account_box,color: Colors.lightBlue,)),
        ],
      )
    );

    // ......images with text......

    // var stack = new Stack(
    //   alignment: const FractionalOffset(0.5,0.8),
    //   children:<Widget> [
    //     new CircleAvatar(
    //       backgroundImage: new AssetImage('images/1.png'),
    //       radius: 100.0,
    //     ),
    //     // new Container(
    //     //   decoration: new BoxDecoration(
    //     //     color: Colors.lightBlue,
    //     //   ),
    //     //   padding: EdgeInsets.all(5.0),
    //     //   child: new Text(' button'),
    //     // ),
    //     new Positioned(
    //       top: 10.0,
    //       left: 50.0,
    //       child: new Text('xiaomaben'),
    //     ),
    //     new Positioned(
    //       bottom: 10.0,
    //       right: 10.0,
    //       child: new Text('maben'),
    //     ),
    //
    //   ],
    // );
    // TODO: implement build
    return MaterialApp(
      title: 'Row Widget demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('horizontal direction structure'),
        ),

        
        
        body: Center(
          child: card,
        ),

        //......locate text......

        // body: Center(child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text('xiao maben'),
        //     Text('xiaoma        ben'),
        //     Expanded(child: Text('xiao ma bennnnn')),
        //     Text(' xiao ma ben '),
        //   ],
        // ),
        // )




        //......buttons......

        // body: new Row(
        //   children: <Widget>[
        //     Expanded(child: new RaisedButton(
        //       onPressed:(){},
        //       color: Colors.redAccent,
        //       child: new Text(' button'),
        //     ) ,),
        //   new RaisedButton(
        //       onPressed:(){},
        //       color: Colors.blueAccent,
        //       child: new Text('blue button'),
        //     ) ,
        //     Expanded(child: new RaisedButton(
        //       onPressed:(){},
        //       color: Colors.orange,
        //       child: new Text(' button'),
        //     ) ,),
        //
        //   ],
        // )
      ),
    );
  }
}