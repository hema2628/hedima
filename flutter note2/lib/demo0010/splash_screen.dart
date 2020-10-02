import 'package:demo_004/keep_alive.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';


class SpalashScreen extends StatefulWidget {
  @override
  _SpalashScreenState createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0,end:1.0).animate(_controller);

    _animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context)=>MyHomePage()),
                (route) => route==null);
      }
    });

    _controller.forward();

  }



  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _animation,
        child: Image.asset('images/1.jpg',
        scale: 2.0,
          fit: BoxFit.cover,
        ),
    );
  }
}
