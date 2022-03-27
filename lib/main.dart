import 'package:flutter/material.dart';

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
                    "Clique abaixo para gerar uma frase",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    )
                ),
                ElevatedButton(
                  onPressed: (){},
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
