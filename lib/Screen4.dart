import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding:  EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("獎狀",style: TextStyle(fontSize: 24,
              fontWeight:FontWeight.bold,)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //color: Colors.redAccent,
                child: Image.asset("image/award1.png"),
                height: 90,
                width:120,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                    border: Border.all(color:Colors.black,width:3),
                    borderRadius:BorderRadius.circular(8),
                    boxShadow: [BoxShadow(color:Colors.amberAccent,
                        offset: Offset(6,6)),
                    ]),//裝飾
                child: Text("這個獎狀是我高中時寫\n專題論文報告所得的蔣狀。",
                  style: TextStyle(fontSize: 18),),
              ),
            ],
          ),
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.redAccent,
                child: Image.asset("image/award2.png"),
                height: 200,
                width:150,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                    border: Border.all(color:Colors.black,width:3),
                    borderRadius:BorderRadius.circular(8),
                    boxShadow: [BoxShadow(color:Colors.amberAccent,
                        offset: Offset(6,6)),
                    ]),//裝飾
                child: Text("這個獎狀是我高中時\n製作專題所獲得的\n校內專題獎狀。",
                  style: TextStyle(fontSize: 18),),
              ),
            ],
          ),


          SizedBox(height: 30,),

        ],
      ),
    );
  }
}