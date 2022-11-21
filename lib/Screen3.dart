import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget{
  final String s3="我已金手獎名義推甄高雄科技大學，得正取。我在大一時已通過高科多益分數畢業條件550分，我一直往燕巢跑找我心上人，最後告白得到了她的心，然後因為都在玩在大一時總共被當6科，現在我打大三了我在努力找到我未來的工作，努力學各總程式語言以防我未來沒工作。";
  @override
  Widget build(BuildContext context ){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding:  EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我的大學生活和我未來期許",style: TextStyle(fontSize: 24,
              fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                border: Border.all(color:Colors.black,width:3),
                borderRadius:BorderRadius.circular(8),
                boxShadow: [BoxShadow(color:Color(0x77bbffff),
                    offset: Offset(6,6)),
                ]),//裝飾
            child: Text("我的興趣與愛好\n我喜歡吃拉麵酒吧等，寫程式看影片，跟女友到處吃好料的底下是一本拉麵好吃",
              style: TextStyle(fontSize: 28),),
          ),
          SizedBox(height: 10,),
          Container(
            color: Color(0x77bbff),
            child: Image.asset("image/roman.jpg"),
            height: 300,
            width:400,
          ),SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                border: Border.all(color:Colors.black,width:3),
                borderRadius:BorderRadius.circular(8),
                boxShadow: [BoxShadow(color:Color(0xC4D179D3),
                    offset: Offset(6,6)),
                ]),//裝飾
            child: Text(s3,
              style: TextStyle(fontSize: 28),),
          ),
          Container(
            color: Colors.redAccent,
            child: Image.asset("image/test.gif"),
            height: 200,
            width:200,
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}