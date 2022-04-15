
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FloatingActionButton"),),
      body: Text("Conteudo"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       //floatingActionButton: FloatingActionButton(
      floatingActionButton: FloatingActionButton.extended(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        elevation: 20,
        icon: Icon(Icons.add_shopping_cart),
        label: Text("Adicionar"),
        //shape: BeveledRectangleBorder(
        //  borderRadius: BorderRadius.circular(10)
        //),
        onPressed: () {  },
        //mini: false,
        //child: Icon(Icons.add),
        //onPressed: (){
          //print("botao pressionado");
        //},
      ),
      bottomNavigationBar: BottomAppBar(
        //shape: CircularNotchedRectangle(),
        //shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu)
            )
          ],
        ),
      ),
    );
  }
}
