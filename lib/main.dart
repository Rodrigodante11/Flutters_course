import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';
/*
  Stateless -> Widgets que nao podem ser laterados(Constantes)
  Stateful -> Widgets que podem ser alterados
 */

void main(){

  runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Frases do dia",
        home: HomeStateful() // chamando a classe home
      ));
}
// so coloca stless/stful que uma classe base eh criada
class HomeStateful extends StatefulWidget { // essa classe chama a classe de build na build q se faz as modificacoes

  @override
  _HomeStatefulState createState() => _HomeStatefulState(); //createState() criar um estado
  // _HomeStatefulState createState() { igual o do cima
  //   return _HomeStatefulState();
  // };
}

class _HomeStatefulState extends State<HomeStateful> {
  var _varText = "Rodrigo Augusto";
  @override
  Widget build(BuildContext context) {


    return Scaffold( // joguei o Scaffold todo no return
      appBar: AppBar(
        title: Text( "Cabecalho do Programa" ),
        backgroundColor: Colors.green,
        centerTitle: true ,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                // _varText = "Mundando apos clicar "; // nao funciona assim precisa do set()
                setState(() {
                  _varText = "Mundando apos clicar "; // alterando a variavel _varText
                });
              },
              style: ElevatedButton.styleFrom(
                 primary: Colors.purple,
              ),
              child: Text("Clique aqui"),
            ),
            Text("Nome: $_varText")
          ],
        )
      )

    );
  }
}


// class  HomeStateless extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     var _titulo = "Cabecalho do Programa";
//
//     return Scaffold( // joguei o Scaffold todo no return
//       appBar: AppBar(
//         title: Text( _titulo ),
//         backgroundColor: Colors.green,
//         centerTitle: true ,
//
//       ),
//
//       body: const Padding(
//           padding: EdgeInsets.all(30),
//           child: Text("Conteudo do Body HomeStateless")
//       ),
//       bottomNavigationBar: BottomAppBar(
//           color: Colors.lightGreen,
//           child: Padding(
//               padding: EdgeInsets.all(16),
//               child: Row(
//                 children: const <Widget> [
//                   Text("Texto11"),
//                   Text("Texto2")
//                 ],
//               )
//           )
//       ),
//     );
//   }
// }
