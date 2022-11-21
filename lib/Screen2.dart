import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget{
  final String s2="我國小吃喝拉撒睡我國中吃喝拉撒睡，與高職時參加全國技能競賽的電腦修護項目，得到金手獎第四名，在高三時考TOEIC拿到綠色證照";
  @override
  Widget build(BuildContext context ){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding:  EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我的一生",style: TextStyle(fontSize: 24,
              fontWeight:FontWeight.bold,)),
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                border: Border.all(color:Colors.black,width:3),
                borderRadius:BorderRadius.circular(8),
                boxShadow: [BoxShadow(color:Colors.amberAccent,
                    offset: Offset(6,6)),
                ]),//裝飾
            child: Text(s2,
              style: TextStyle(fontSize: 28),),
          ),
          SizedBox(height: 30,),
          Container(
            width: 380,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
                style: BorderStyle.solid,
              ),
              //borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image:AssetImage("image/toeic.png"),
                  fit: BoxFit.cover
              ),
              color:Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}