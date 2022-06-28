import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:alan_voice/alan_voice.dart';

class home extends StatefulWidget{
  _home createState() => _home();
}

class _home extends State<home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 210, 224),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(0)),
          Container(
            child: Lottie.asset('assets/40833-happy-birthday.json'),
          ),
          Padding(padding: EdgeInsets.only(bottom: 50)),
          Container(
            alignment: Alignment.center,
            child: Text('Enjoy every moment of your birthday and wait until tomorrow to realize that you have gotten older. Happy Birthday.',style: TextStyle(color: Colors.redAccent, fontSize: 30, fontFamily: 'Jose', fontWeight: FontWeight.bold),),
          ),
          Padding(padding: EdgeInsets.all(5)),

          RaisedButton(child: Text('Press it!'),color: Colors.amberAccent,onPressed: (){
            showDialog(context: context, builder: (ctx) => AlertDialog(
              title: Text('Would you like to have a Cake?'),
              backgroundColor: Color.fromARGB(255, 239, 117, 255),
              // content: Image.asset('assets/image/cake2.png'),
              actions: [
                RaisedButton(
                  onPressed: (){
                    Navigator.of(ctx).pop();
                  },
                  child: Container(child: Text('Definitely!'),),
                )
              ],
            ));
          })
        ],
      ),
    );
  }
}