import  'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
      title: "Frases do dia",
      
      home:  Row(children:  const <Widget> [
      Text("Row1 "),
        Text(" Row2 ")
    //home:  Column(children:  const <Widget> [
    // Text("Column"),
    // Text("Column2")
      ],)
      ));
}