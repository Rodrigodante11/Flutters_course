import 'package:flutter/material.dart';
import "package:shared_preferences/shared_preferences.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _textoSalvo = "Nada Salvo!";


  _salvar() async {
    String valorDigitado= _controllerCampo.text;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("Nome", valorDigitado);  // salvando o dado na preferencia

    print("operacao (salvar): " + valorDigitado);

  }

  _recuperar() async {

    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _textoSalvo = prefs.getString("Nome") ?? "sem valor";
    });

    print("operacao (Recuperar): " + _textoSalvo);

    print("operacao (Remover): " );

  }

  _remover()async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("Nome");
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
                _textoSalvo,
              style:TextStyle(
                fontSize: 18
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
                        fontSize: 18,
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
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: _remover,
                  child: Text(
                    "Remover",
                    style: TextStyle(
                        fontSize: 18,
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
