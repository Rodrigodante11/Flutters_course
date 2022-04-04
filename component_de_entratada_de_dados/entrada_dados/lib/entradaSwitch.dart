
import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario =  false;
  bool _escolhaconfig =  false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de dados"),
        ),
        body: Container(
            child:Column(
              children: <Widget>[

                SwitchListTile( // apenas com column nao funciona com Row
                  title: Text("Receber Noticacao? "),
                    value: _escolhaUsuario,
                    onChanged: (bool? valor){
                      setState(() {
                        _escolhaUsuario = valor!;
                      });
                    }
                ),

                SwitchListTile( // apenas com column nao funciona com Row
                    title: Text("Carregar imagens automaticamente "),
                    value: _escolhaconfig,
                    onChanged: (bool? valor){
                      setState(() {
                        _escolhaconfig = valor!;
                      });
                    }
                ),

                ElevatedButton(
                    onPressed: (){
                      if(_escolhaUsuario){
                        print("Escolha: ativar notificacao");
                      }else{
                        print("Escolha: Nao Ativar notificacao");
                      }
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


              // Switch(
              //     value: _escolhaUsuario,
              //     onChanged: (bool? valor){
              //       setState(() {
              //         _escolhaUsuario = valor!;
              //       });
              //     }
              // ),
              //   Text("Receber Noticacao? ")

              ],
            )
        )
    );
  }
}
