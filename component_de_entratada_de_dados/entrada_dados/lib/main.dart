import 'package:entrada_dados/EntradaRadioButton.dart';
import 'package:flutter/material.dart';

import 'CampoTexto.dart';
import 'EntradaCheckBox.dart';
import 'entradaSwitch.dart';

void main(){
  runApp(
    MaterialApp(
      // home: CampoTexto(),
      // home: EntradaCheckBox(),
      // home: EntradaRadioButton(),
      home : EntradaSwitch(),
      debugShowCheckedModeBanner: false,
    )
  );
}