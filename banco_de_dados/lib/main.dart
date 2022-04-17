import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _recuperarBancoDados() async{

    final caminhoBancoDados = await getDatabasesPath();
    //print(caminhoBancoDados);
    final localBancoDados = join(caminhoBancoDados, "banco.db");
    
    var bd = await openDatabase(
        localBancoDados,
        version: 1,
        onCreate: (db,dbVersaoRecente){
          String sql= "CREATE TABLE usuarios (id INTEGER PRIMARY KEY, nome VARCHAR, idade INTEGER)";
          db.execute(sql);
        }
    );
    return bd;
    //print("gg " + bd.isOpen.toString());
  }
  
  _salvar() async{
    
    Database bd = await _recuperarBancoDados();
    Map<String, dynamic> dadosUsuario = {
      "nome":"Rodrigo Augusto",
      "idade": 22
    };
    int id = await bd.insert("usuarios", dadosUsuario);
    print("Id salvo: "+id.toString());
    
  }




  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
