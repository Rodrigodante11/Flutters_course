
import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({Key? key}) : super(key: key);



  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _comidaBrasileira = false;
  bool _comidaItaliana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child:Column(
          children: <Widget>[

            CheckboxListTile(
              title: Text("Comida Brasileira"),
                subtitle: Text("Melhor comida do mundo Brasileira"),
                activeColor: Colors.blue,
                // selected: true,
                value: _comidaBrasileira,
                onChanged: (bool? valor){
                  setState(() {
                    _comidaBrasileira=valor!;
                  });
                },
              secondary: Icon(Icons.add_box),
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("comida apimentada"),
              activeColor: Colors.blue,
              // selected: true,
              value: _comidaItaliana,
              onChanged: (bool? valor){
                setState(() {
                  _comidaItaliana=valor!;
                });
              },
              secondary: Icon(Icons.add_box),
            ),
            ElevatedButton(
                onPressed: (){
                  print("Comida Brasileira: " + _comidaBrasileira.toString() +
                      "\n Comida  Mexicana: " + _comidaItaliana.toString());
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
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
              "Comida Brasileira: " + _comidaBrasileira.toString() +
                  "\n Comida  Mexicana: " + _comidaItaliana.toString(),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
        )

            // Text(
            //     "Comida Brasileira",
            //   style: TextStyle(
            //     fontSize: 15,
            //   ),
            // ),
            // Checkbox(
            //     value: _estaSelecionado,
            //     onChanged: (bool? valor){
            //       setState(() {
            //         _estaSelecionado= valor!;
            //       });
            //     },
            // )
          ],
        )
      )
    );
  }
}
