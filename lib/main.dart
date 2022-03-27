import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
        // debugShowCheckedModeBanner: false,
        title: "Frases do dia",
        home: Container(
            margin: EdgeInsets.only(top: 40),  // espacamento Externo  apenas para containers
            decoration: BoxDecoration(
              border: Border.all(width: 3, color:Colors.white)
            ),
            child: Image.asset(
              "images/mesa.jpg",
                  // fit: BoxFit.cover,// Cobre toda area disponivel
                  // fit: BoxFit.contain,// para exibir a imagem inteira independente do espaco
                  // fit: BoxFit.fill, // coloca a imagem toda no espacaTodo
                  // fit: BoxFit.fitHeight // garante que a altura seja preenchida perdendo partes laterais da imagens
                  // fit: BoxFit.none // exibe a imagem no seu tamanho original podendo perder partes da imagem
                  fit: BoxFit.scaleDown //parecido com contains mas garante que a imagem caiba na horizontal sem distorcao
            ) ,
        ),

      ));
}