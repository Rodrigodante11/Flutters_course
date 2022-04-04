import 'package:entrada_dados/EntradaRadioButton.dart';
import 'package:flutter/material.dart';

import 'CampoTexto.dart';
import 'EntradaCheckBox.dart';

void main(){
  runApp(
    MaterialApp(
      // home: CampoTexto(),
      // home: EntradaCheckBox(),
      home: EntradaRadioButton(),
      debugShowCheckedModeBanner: false,
    )
  );
}