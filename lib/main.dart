import 'package:flutter/material.dart';
import 'package:project/Screen1.dart';
import 'package:project/Screen2.dart';
import 'package:project/Screen3.dart';
import 'package:project/Screen4.dart';
//import 'package:audioplayers/audioplayers.dart';
//final player1=AudioPlayer();
void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState()=>_MyAppState();
}

class _MyAppState extends State<MyApp>{
  final tabs=[
    Center(child: Screen1(),),
    Center(child: Screen2(),),
    Center(child: Screen3(),),
    Center(child: Screen4(),),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("Midterm"),),
        body:tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.brown,
          selectedFontSize: 22.0,
          unselectedFontSize: 1.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items:[
            BottomNavigationBarItem(icon: Image.asset('image/bottom3.gif',height: 50,width: 50,),
                                    label: "自傳",
                                    ),
            BottomNavigationBarItem(icon: Image.asset('image/bottom4.gif',height: 50,width: 50,),
                                    label: "人生",
                                     ),
            BottomNavigationBarItem(icon: Image.asset('image/bottom5.gif',height: 50,width: 50,),
                                    label: "大學",
                                    ),
            BottomNavigationBarItem(icon: Image.asset('image/bottom6.gif',height: 50,width: 50,),
                                    label: "獎狀",
                                     ),
          ],
          onTap: (index){setState(() =>_currentindex=index);},
        ),
      )
    );
  }
}
