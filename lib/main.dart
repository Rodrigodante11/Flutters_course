import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
        // debugShowCheckedModeBanner: false,
        title: "Frases do dia",
        home: Container(
            padding: const EdgeInsets.fromLTRB(30, 80, 80, 30), // espacamento internos
            margin: EdgeInsets.all(0),  // espacamento Externo  apenas para containers
            // margin: EdgeInsets.fromLTRB(20, 20, 20, 20), // espacamento Externo
            // margin: EdgeInsets.only(top:50,left: 50), // espacamento Externo
            decoration: BoxDecoration(
              border: Border.all(width: 3, color:Colors.white)
            ),
            child:Column(
              children: const <Widget>[
                Text("t1"),

                Padding(
                    padding: EdgeInsets.all(30),
                    child: Text("T2"),
                ),
                Text("t3"),
                // Text(""
                //     "apenas um texto aleatorio para exebir no app flutter ",
                //     textAlign: TextAlign.justify,
                // )
              ],
            )
        ),

      ));
}