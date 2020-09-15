import 'package:flutter/material.dart';


void main()=>runApp(MyApp(
  items: new List<String>.generate(1000, (i)=>"item $i")
));

class MyApp extends StatelessWidget{

  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'text widget',
      home:Scaffold(
        appBar: new AppBar(title: new Text('ListView Widget')),

      //   body:GridView.count(
      //     padding:const EdgeInsets.all(20.0),
      //     crossAxisSpacing: 10.0,
      //     crossAxisCount: 3,
      //     children: <Widget>[
      //       const Text('xiaomaben'),
      //       const Text('xiao maben'),
      //       const Text('xiaoma ben'),
      //       const Text('xiao ma ben'),
      //       const Text(' xiao ma ben'),
      //     ],
      // )
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.7
          ),
          children: <Widget>[
            new Image.asset('images/1.png',fit: BoxFit.cover,),
            new Image.asset('images/1.png',fit: BoxFit.cover,),
            new Image.asset('images/1.png',fit: BoxFit.cover,),
            new Image.asset('images/1.png',fit: BoxFit.cover,),
            new Image.asset('images/1.png',fit: BoxFit.cover,),
            new Image.asset('images/1.png',fit: BoxFit.cover,),
          ],
        ),



        // body:new ListView.builder(
        //   itemCount: items.length,
        //   itemBuilder: (context,index){
        //     return new ListTile(
        //       title: new Text('${items[index]}'),
        //     );
        //   },
        // )

        // body:
        // new ListView(
        //   children: <Widget>[
        //     new Image.asset('images/1.png'),
        //     new ListTile(
        //       leading: new Icon(Icons.perm_camera_mic),
        //       title: new Text('perm_camera_mic'),
        //     ),new ListTile(
        //       leading: new Icon(Icons.add_call),
        //       title: new Text('add call'),
        //     ),new ListTile(
        //       leading: new Icon(Icons.account_box),
        //       title: new Text('accountbox'),
        //     ),new ListTile(
        //       leading: new Icon(Icons.add_to_photos),
        //       title: new Text('add photos'),
        //     )
        //   ],
        // )



        // body: Center(
        //   child: Container(
        //     height: 200.0,
        //     child: myList(),
        //   ),
        // ),







        // body: Center(
        //
        //   // child: Container(
        //   //   child: new Text('Hello xiaomaben', style: TextStyle(fontSize: 40.0)),
        //   //   alignment: Alignment.topLeft,
        //   //   width: 500.0,
        //   //   height: 400.0,
        //   //   padding: const EdgeInsets.fromLTRB(10.0, 300.0, 0.0, 0.0),
        //   //   margin: const EdgeInsets.all(10.0),
        //   //   decoration: new BoxDecoration(
        //   //       gradient: const LinearGradient(
        //   //           colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]),
        //   //       border: Border.all(width: 2.0,color: Colors.red)
        //   //   ),
        //   // ),
        //
        //
        //   // child: new Container(
        //   //   child: new Image.asset('images/1.png',
        //   //   fit: BoxFit.scaleDown,
        //   //     repeat: ImageRepeat.repeatY,
        //   //   ),
        //   //   width: 300.0,
        //   //   height: 200.0,
        //   //   color: Colors.blue,
        //   //   )
        //
        // ),
      )
    );
  }

}




class myList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            width: 180.0,
            color: Colors.greenAccent,
          ),new Container(
            width: 180.0,
            color: Colors.blueAccent,
          ),new Container(
            width: 180.0,
            color: Colors.orange,
          ),new Container(
            width: 180.0,
            color: Colors.yellow,
          )
        ],

    );
  }
}