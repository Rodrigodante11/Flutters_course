import 'package:flutter/material.dart';
import 'package:navegacao_entre_telas/TelaPrincipal.dart';
import 'package:navegacao_entre_telas/TelaSecundaria.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/secundaria" : (context) => TelaSecundaria()

    },
    home: TelaPrincipal(),
  ));
}


