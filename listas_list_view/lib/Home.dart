
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _items = [];

  void _carregarItens(){
    _items = [];
    for(int i=0;i<=10;i++){
      Map<String,dynamic> item = Map();
      item["titulo"] = "Titulo ${i} mostrando list";
      item["descricao"] = "Descricao ${i}  dentro do Map e List";
      _items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {

    _carregarItens(); // chamando a funcao
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, indice) {
              return ListTile(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(_items[indice]["titulo"]),
                          titlePadding: EdgeInsets.all(50),
                          titleTextStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.red
                          ),
                          content: Text(_items[indice]["descricao"]),
                          // contentPadding: EdgeInsets.all(20),
                          actions: <Widget>[
                            TextButton(
                                onPressed: (){
                                  Navigator.pop(context); //fechar a aba do alert
                                },
                                child: Text("Sim")
                            ),
                            TextButton(
                                onPressed: (){
                                  Navigator.pop(context); //fechar a aba do alert
                                },
                                child: Text("Nao")
                            )
                          ],
                        );
                      },
                  );
                },
                title: Text(_items[indice]["titulo"]),
                subtitle: Text(_items[indice]["descricao"]),
              );
            },
        ),
      ),
    );
  }
}
