import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Frases do dia",
        home: Scaffold(
          appBar: AppBar(
              title: const Text("Cabecalho do Programa"),
              backgroundColor: Colors.green,
              centerTitle: true ,

          ),

          body: const Padding(
            padding: EdgeInsets.all(30),
            child: Text("Conteudo do Body")
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.lightGreen,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: const <Widget> [
                  Text("Texto11"),
                  Text("Texto2")
                ],
              )
            )
          ),
        ),
      ));
}