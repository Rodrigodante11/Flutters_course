import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _campoTextoState();
}

class _campoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController(); // usando pra pegar o texto do usuario apos clicar no botao
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children:  <Widget>[
          Padding(
          padding: EdgeInsets.all(32),
          child: TextField(
            // text , number, emailAdrress, datetime
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Digite um valor:"

            ),
            // enabled: false,  nao deixa o usuario digitar no campo
            maxLength: 10,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
            obscureText: true, // esconde o texto do usuario (usado em senha)
            // onChanged: (String texto){ // pegar o valor do usuario sempre que qualquer letra for digitado
            //   print("valor digitado: " + texto);
            //  },
            onSubmitted: (String texto){
              print("valor digitado: " + texto); // so pega o valor do texto quando der submit
            },  //   print("valor digitado: " + texto); // so pega o valor do texto quando der submit
            controller: _textEditingController, // varivel q vai ter o texto do usuario
            ),
          ),
          ElevatedButton(
            onPressed: (){
              print("Valor Digitado " + _textEditingController.text); // exibindo o texto do usuario digitado
            },
            child: Text("Salvar"),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            )
          )
        ],
      ),
    );
  }
}
