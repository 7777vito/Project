import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';

class Screen1 extends StatelessWidget{
  final String s1="snksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\n"
      "dsdsa1123snksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\n"
      "dsdsa1123snksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\n"
      "dsdsa1123snksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\n"
      "dsdsa1123snksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\nsnksadsakdsasdksdk\n"
      ;
  @override
  Widget build(BuildContext context ){

    final player=AudioPlayer();
    player.play(AssetSource('music/music1.flac'));

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding:  EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Text("pigu",style: TextStyle(fontSize: 24,
                                             fontWeight:FontWeight.bold,)),
          ),
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
          Container(
            color: Colors.redAccent,
            child: Image.asset("image/test.gif"),
            height: 200,
            width:200,
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image:AssetImage("image/test.gif"),
                      fit: BoxFit.cover
                  ),
                  color:Colors.white,
                ),

              ), Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image:AssetImage("image/test.gif"),
                      fit: BoxFit.cover
                  ),
                  color:Colors.white,
                ),

              )
            ],
          ),
        ],
      ),
    );
  }
}