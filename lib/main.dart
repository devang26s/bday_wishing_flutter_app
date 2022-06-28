import 'dart:async';
import 'home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget{
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash>{
  void initState(){
    super.initState();
    Timer(Duration(seconds: 6), 
      ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 217, 230),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset('assets/image/cake.png'),
          ),
          Container(
            child: Text('Happy 39th Birthday', style: TextStyle(fontFamily: 'Rubik', fontSize: 30, color: Color.fromARGB(255, 72, 47, 37), decoration: TextDecoration.none), textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}