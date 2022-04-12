
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Future<Map> _recuperarPreco() async{
    String url = "https://blockchain.info/ticker";
    http.Response response= await http.get(url);
    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map> ( //future = recuperar dados futuros levando um tempinho
        future: _recuperarPreco(),
        builder: (context, snapshot){
          String resultado="";

          switch(snapshot.connectionState){
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              resultado = "Carregando...";
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              if( snapshot.hasError){
                resultado = " Erro ao carregar dados";
              }else{
                double valor = snapshot.data!["BRL"]["buy"];
                resultado = "Preco do Bitcoin: ${valor.toString()}";
              }
              break;
          }
          return Center(
            child: Text( resultado),
          );
        },
    );
  }
}
