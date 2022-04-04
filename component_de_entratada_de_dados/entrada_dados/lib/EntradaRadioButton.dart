
import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _escolhaUsuario = "" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de dados"),
        ),
        body: Container(
            child:Column(
              children: <Widget>[
                Flexible( child:
                  RadioListTile(
                    title: Text("Masculino"),
                    value: "masc",
                    groupValue: _escolhaUsuario,
                    onChanged: (String? escolha){
                      setState(() {
                        _escolhaUsuario = escolha!;
                      });
                    },
                  ),
                ),
                Flexible( child:
                  RadioListTile(
                    title: Text("Feminino"),
                    value: "fem",
                    groupValue: _escolhaUsuario,
                    onChanged: (String? escolha){
                      setState(() {
                        _escolhaUsuario = escolha!;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      print("Resultado: " + _escolhaUsuario);
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




                // Text("Masculino"),
                // Radio(
                //     value: "masc",
                //     groupValue: _escolhaUsuario,
                //     onChanged: (String? escolha) {
                //       setState(() {
                //         _escolhaUsuario=escolha!;
                //       });
                //     }
                // ),
                // Text("Feminino"),
                // Radio(
                //     value: "fem",
                //     groupValue: _escolhaUsuario,
                //     onChanged: (String? escolha) {
                //       setState(() {
                //         _escolhaUsuario=escolha!;
                //       });
                //     }
                // )


              ],
            )
        )
    );
  }
}


