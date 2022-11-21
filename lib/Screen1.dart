import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
final player1=AudioPlayer();
int audioindex = 0;
List<String> allAudio = [
  'edamame.mp3',
  'RunIt.mp3',
  'TimHenson.mp3'
];
class Screen1 extends StatelessWidget{
  final String s1="我是歐信銓，歐信銓的歐，歐信銓的信，歐信銓的銓，我來自新北樹林，現在時高雄科技大學大三生，被當了6科，快補完了，畢業於樹林國小育林國中以及差點畢不了業的鶯歌高職";
  @override


  Widget build(BuildContext context ){

    player1.play(AssetSource('edamame.mp3'));
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding:  EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Text("自傳",style: TextStyle(fontSize: 24,
                                             fontWeight:FontWeight.bold,)),
          ),
          Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image:AssetImage("image/goldhandaward.jpg"),
                  fit: BoxFit.cover
              ),
              color:Colors.white,
            ),
          ),
          SizedBox(height: 80,),

          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                        border: Border.all(color:Colors.black,width:3),
                        borderRadius:BorderRadius.circular(8),
                        boxShadow: [BoxShadow(color:Colors.amberAccent,
                                    offset: Offset(6,6)),
                        ]),//裝飾
            child: Text(s1,
                        style: TextStyle(fontSize: 20),),
          ),

          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              nextWidget(),
              playPauseWidget()
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 10, 30, 50),
            decoration: BoxDecoration(
                border: Border.all(color:Colors.black,width:3),
                boxShadow: [BoxShadow(color:Color(0xff658eda),
                    offset: Offset(6,6)),
                ]),//裝飾
            child: Text("上面是我寫的小工具可以暫停撥放，以及下一首的選項。",
              style: TextStyle(fontSize: 18),),
          ),
        ],
      ),
    );
  }
}

class playPauseWidget extends StatefulWidget {
  const playPauseWidget({super.key});

  @override
  State<playPauseWidget> createState() => _playPauseWidget();
}

class _playPauseWidget extends State<playPauseWidget> {
  bool playmusic = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 50,
      width: 50,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: Colors.yellow,
        child:Ink.image(
          image: AssetImage('image/play.jpg'),
          fit: BoxFit.cover,
          child: InkWell(
            onTap: () {
              setState(() {
                // playmusic == true ? playmusic = false : playmusic = true;
                if(playmusic){
                  player1.pause();playmusic=false;
                } else {
                  player1.resume();playmusic=true;
                }
              });
            },
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     setState(() {
        //       // playmusic == true ? playmusic = false : playmusic = true;
        //       if(playmusic){
        //         player1.pause();playmusic=false;
        //       } else {
        //         player1.resume();playmusic=true;
        //       }
        //     });
        //   },
        // ),
      ),
    );
  }
}

class nextWidget extends StatefulWidget {
  const nextWidget({super.key});

  @override
  State<nextWidget> createState() => _nextWidget();
}

class _nextWidget extends State<nextWidget>{
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 50,
      width: 50,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: Colors.yellow,
        child:Ink.image(
          image: AssetImage('image/next.jpg'),
          fit: BoxFit.cover,
          child: InkWell(
            onTap: () {
              setState(() {
                // playmusic == true ? playmusic = false : playmusic = true;
                audioindex=(audioindex>=2)?(0):(audioindex+1);
                player1.play(AssetSource(allAudio[audioindex]));
              });
            },
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     setState(() {
        //       // playmusic == true ? playmusic = false : playmusic = true;
        //       if(playmusic){
        //         player1.pause();playmusic=false;
        //       } else {
        //         player1.resume();playmusic=true;
        //       }
        //     });
        //   },
        // ),
      ),
    );
  }
}