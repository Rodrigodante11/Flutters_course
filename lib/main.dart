import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Faça a pessoa que você gosta se sentir especial ao invés de só mais uma.",
    "Seja estranho. Seja aleatório. Seja quem você é. Porque você nunca sabe quem amaria a pessoa que você esconde.",
    "Um ato aleatório de bondade, por menor que seja, pode ter um tremendo impacto na vida de outra pessoa.",
    "Tem muita gente que fala 'nossa como esse ano passou rápido' Agora voltar no tempo ninguém quer!"
  ];

  var _fraseGerada =  "Clique abaixo para gerar uma frase";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center( //Center para centralizar o child: container abaixo
        child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity, // para o container pega todo o espaco do app
            // decoration: BoxDecoration(
            //     border: Border.all(width: 3,color: Colors.amber)
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Image.asset("images/logo.png"),
                Text(
                    _fraseGerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    )
                ),
                ElevatedButton(
                  onPressed: (){
                    _gerarFrase();
                    },
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                )
              ],
            )
        ),
      )
    );
  }
}
