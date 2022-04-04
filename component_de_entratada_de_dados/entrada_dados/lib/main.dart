import 'package:entrada_dados/EntradaRadioButton.dart';
import 'package:entrada_dados/EntradaSlider.dart';
import 'package:entrada_dados/CampoTexto.dart';
import 'package:entrada_dados/EntradaCheckBox.dart';
import 'package:entrada_dados/entradaSwitch.dart';
import 'package:flutter/material.dart';

//import 'CampoTexto.dart';
// import 'EntradaCheckBox.dart';
// import 'entradaSwitch.dart';

void main(){
  runApp(
    MaterialApp(
      // home: CampoTexto(),
      // home: EntradaCheckBox(),
      // home: EntradaRadioButton(),
      // home : EntradaSwitch(),
      home: EntradaSlider(),
      debugShowCheckedModeBanner: false,
    )
  );
}