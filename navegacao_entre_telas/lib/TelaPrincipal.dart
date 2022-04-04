
import 'package:flutter/material.dart';
import 'package:navegacao_entre_telas/TelaSecundaria.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(35),
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,  // BuildContext context da build linha 13
                      MaterialPageRoute(
                          builder: (context) => TelaSecundaria( nome: 'Rodrigo',)
                      )
                  );
                },
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('Ir para segunda tela')),
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