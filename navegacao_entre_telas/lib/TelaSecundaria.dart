
import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  const TelaSecundaria({Key? key}) : super(key: key);

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela Secundaria"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(35),
          child: Column(
            children: <Widget>[
              Text("Secundaria Tela"),
            ],
          ),
        )
    );;
  }
}
