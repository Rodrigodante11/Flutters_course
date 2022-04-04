
import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _valor = 4;
  String _label = "4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de dados"),
        ),
        body: Container(
          padding: EdgeInsets.all(60),
            child:Column(
              children: <Widget>[

                Slider(
                    value: _valor,
                    min: 0,
                    max: 10,
                    label: _label,
                    divisions: 10,

                    activeColor: Colors.red,
                    inactiveColor: Colors.black26,
                    onChanged: (double novoValor){
                      setState(() {
                        _valor = novoValor ;
                        _label = novoValor.toString();
                      });
                    }
                ),
                ElevatedButton(
                    onPressed: (){
                      print("Valor Selecionado: " + _valor.toString());
                    },
                    child: Text(
                        "Salvar",
                        style: TextStyle(
                          fontSize: 20,
                        )
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    )
                ),



              ],
            )
        )
    );
  }
}
