import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
        // debugShowCheckedModeBanner: false,
        title: "Frases do dia",
        home: Container(
            margin: EdgeInsets.only(top: 40),  // espacamento Externo  apenas para containers
            decoration: BoxDecoration(
              border: Border.all(width: 3, color:Colors.white)
            ),

            child:Row (
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center, //
              children: const <Widget>[
                Text("T11"),
                Text("T2"),
                Text("T3"),
              ],
            )
        ),

      ));
}