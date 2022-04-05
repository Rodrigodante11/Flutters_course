
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  _recuperarCep() async { //async == assincrono == metodo _recuperarCep assincrono
    String cep = "37548000";
    String url = "https://viacep.com.br/ws/$cep/json/";
    http.Response responde;

    responde = await http.get(url); //await esperar a resposta pra ser salva na variavel

    print("resposta1: " + responde.statusCode.toString());

    Map<String, dynamic> retorno = json.decode( responde.body);
    //armazendo o responde.body que eh string em um jason e jogando em um Map
    String localidade = retorno["localidade"];
    String ddd = retorno["ddd"];

    print("Resposta localidade: $localidade , ddd $ddd" );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de servico web"),
      ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                  onPressed: _recuperarCep,
                  child: Text("Clique Aqui"))
            ],
          ),
        )
    );
  }
}

