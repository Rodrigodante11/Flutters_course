
import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {


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
              Text("Secundaria Tela! "),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/");
                  },
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text('Ir para tela Principal ')),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  )
              ),
            ],
          ),
        )
    );
  }
}
