import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _salvar(){

  }

  _recuperar(){

  }
  TextEditingController _controllerCampo =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manipulacao de dados "),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget> [
            Text(
              "Nada Salvo!",
              style:TextStyle(
                fontSize: 20
              )
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite Algo"
              ),
              controller: _controllerCampo,
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: _salvar,
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: _recuperar,
                  child: Text(
                    "Recuperar",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
