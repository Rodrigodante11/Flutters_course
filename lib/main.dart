import  'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
        title: "Frases do dia",
        home: Container(color: Colors.white,
          child: Column(
            children: const <Widget>[
              Text(
                  "Esse texto nao sai pro lado gracas ao container",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 2,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.greenAccent,
                  decorationStyle: TextDecorationStyle.solid,
                  
                ),
              )
            ],
          )
        ),

      ));
}